# encoding=utf-8
"""
    Created on 15:05 2017/3/28 
    @author: Jindong Wang
"""

"""
   Construct sequence features for time-series sequence data
"""

import numpy as np


class Feature_fft(object):
    def __init__(self, sequence_data):
        self.data = sequence_data
        fft_trans = np.abs(np.fft.fft(sequence_data))
        self.dc = fft_trans[0]
        self.freq_spectrum = fft_trans[1:int(np.floor(len(sequence_data) * 1.0 / 2)) + 1]
        self._freq_sum_ = np.sum(self.freq_spectrum)

    def fft_dc(self):
        return self.dc

    def fft_mean(self):
        return np.mean(self.freq_spectrum)

    def fft_var(self):
        return np.var(self.freq_spectrum)

    def fft_std(self):
        return np.std(self.freq_spectrum)

    def fft_entropy(self):
        pr_freq = self.freq_spectrum * 1.0 / self._freq_sum_
        entropy = -1 * np.sum([np.log2(p) * p for p in pr_freq])
        return entropy

    def fft_energy(self):
        return np.sum(self.freq_spectrum ** 2) / len(self.freq_spectrum)

    # def fft_skew(self):
    #     fft_mean, fft_std = self.fft_mean(), self.fft_std()
    #     return np.mean([np.power((x - fft_mean) / fft_std, 3)
    #                     for x in self.freq_spectrum])
    def fft_skew(self):
        fft_mean, fft_std = self.fft_mean(), self.fft_std()

        return np.mean([0 if fft_std == 0 else np.power((x - fft_mean) / fft_std, 3)
                        for x in self.freq_spectrum])

    # def fft_kurt(self):
    #     fft_mean, fft_std = self.fft_mean(), self.fft_std()
    #     return np.mean([np.power((x - fft_mean) / fft_std, 4) - 3
    #                     for x in self.freq_spectrum])
    def fft_kurt(self):
        fft_mean, fft_std = self.fft_mean(), self.fft_std()
        return np.mean([0 if fft_std == 0 else np.power((x - fft_mean) / fft_std, 4) - 3
                        for x in self.freq_spectrum])

    def fft_max(self):
        idx = np.argmax(self.freq_spectrum)
        return idx, self.freq_spectrum[idx]

    def fft_topk_freqs(self, top_k=None):
        idxs = np.argsort(self.freq_spectrum)
        if top_k == None:
            top_k = len(self.freq_spectrum)
        return idxs[:top_k], self.freq_spectrum[idxs[:top_k]]

    # def fft_shape_mean(self):
    #     shape_sum = np.sum([x * self.freq_spectrum[x]
    #                         for x in range(len(self.freq_spectrum))])
    #     return shape_sum * 1.0 / self._freq_sum_
    def fft_shape_mean(self):
        shape_sum = np.sum([x * self.freq_spectrum[x]
                            for x in range(len(self.freq_spectrum))])
        return 0 if self._freq_sum_ == 0 else shape_sum * 1.0 / self._freq_sum_

    # def fft_shape_std(self):
    #     shape_mean = self.fft_shape_mean()
    #     var = np.sum([np.power((x - shape_mean), 2) * self.freq_spectrum[x]
    #                   for x in range(len(self.freq_spectrum))]) / self._freq_sum_
    #     return np.sqrt(var)
    def fft_shape_std(self):
        shape_mean = self.fft_shape_mean()
        var = np.sum([0 if self._freq_sum_ == 0 else np.power((x - shape_mean), 2) * self.freq_spectrum[x]
                      for x in range(len(self.freq_spectrum))]) / self._freq_sum_
        return np.sqrt(var)

    def fft_shape_skew(self):
        shape_mean = self.fft_shape_mean()
        return np.sum([np.power((x - shape_mean), 3) * self.freq_spectrum[x]
                       for x in range(len(self.freq_spectrum))]) / self._freq_sum_

    def fft_shape_kurt(self):
        shape_mean = self.fft_shape_mean()
        np.sum([np.power((x - shape_mean), 4) * self.freq_spectrum[x] - 3
                for x in range(len(self.freq_spectrum))]) / self._freq_sum_

    def fft_all(self):
        '''
        Get all fft features in one function
        :return: All fft features in one list
        '''
        feature_all = list()
        feature_all.append(self.fft_dc())
        feature_all.append(self.fft_shape_mean())
        feature_all.append(self.fft_shape_std() ** 2)
        feature_all.append(self.fft_shape_std())
        feature_all.append(self.fft_shape_skew())
        feature_all.append(self.fft_shape_kurt())
        feature_all.append(self.fft_mean())
        feature_all.append(self.fft_var())
        feature_all.append(self.fft_std())
        feature_all.append(self.fft_skew())
        feature_all.append(self.fft_kurt())
        return feature_all
