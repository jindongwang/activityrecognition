# encoding=utf-8
"""
    Created on 14:46 2017/3/28 
    @author: Jindong Wang
"""
import numpy as np
import scipy.stats

'''
    Calculate time domain features
'''


class Feature_time(object):
    def __init__(self, sequence_data):
        self.data = sequence_data

    def time_mean(self):
        return np.mean(self.data)

    def time_var(self):
        return np.var(self.data)

    def time_std(self):
        return np.std(self.data)

    def time_mode(self):
        return float(scipy.stats.mode(self.data, axis=None)[0])

    def time_max(self):
        return np.max(self.data)

    def time_min(self):
        return np.min(self.data)

    def time_over_zero(self):
        return len(self.data[self.data > 0])

    def time_range(self):
        return self.time_max() - self.time_min()

    def time_all(self):
        '''
        Get all time domain features in one function
        :return: all time domain features in a list
        '''
        feature_all = list()
        feature_all.append(self.time_mean())
        feature_all.append(self.time_var())
        feature_all.append(self.time_std())
        feature_all.append(self.time_mode())
        feature_all.append(self.time_max())
        feature_all.append(self.time_min())
        feature_all.append(self.time_over_zero())
        feature_all.append(self.time_range())
        return feature_all
