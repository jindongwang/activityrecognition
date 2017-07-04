# -*- coding:utf-8 -*-
# （1）时域：均值，方差，标准差，最大值，最小值，过零点个数，最大值与最小值之差，众数
# （2）频域：直流分量，图形的均值、方差、标准差、斜度、峭度，幅度的均值、方差、标准差、斜度、峭度
# 共19个特征

import numpy as np
from .feature_time import Feature_time
from .feature_fft import Feature_fft

# from feature_time import Feature_time
# from feature_fft import Feature_fft

def get_feature(arr):
    '''
    Get features of an array
    :param arr: input 1D array
    :return: feature list
    '''
    feature_list = list()
    # get time domain features
    feature_time = Feature_time(arr).time_all()
    feature_list.extend(feature_time)
    # get frequency domain features
    feature_fft = Feature_fft(arr).fft_all()
    feature_list.extend(feature_fft)
    return feature_list


def sequence_feature(seq, win_size, step_size):
    '''
    Get features of a sequence, with or without window
    :param seq: shape of the sequence: (n,1)
    :param win_size: window size, if window_size == 0, get features without window
    :param step_size: step size
    :return: 2D feature matrix
    '''
    if win_size == 0:
        return np.asarray(get_feature(seq))
    window_size = win_size
    step_size = step_size
    r = len(seq)
    feature_mat = list()

    j = 0
    while j < r - step_size:
        window = seq[j:j + window_size]
        win_feature = get_feature(window)
        feature_mat.append(win_feature)
        j += step_size
    return np.asarray(feature_mat)


def test():
    a = np.arange(0, 10).reshape((10, 1))
    print(sequence_feature(a, 0, 4))  # without window
    print(sequence_feature(a, 5, 4))  # with window
    # example output:
    # [4.5         4.5         2.87228132  0.          9.          0.          9.
    #  9.          0.          2.66666667  1.55555556  1.24721913 - 1.14074074
    #  - 1.14074074  3.          2.          1.41421356  0. - 1.3]
    # [[2.          2.          1.41421356  0.          4.          0.          4.
    #   4.          0.          0.66666667  0.22222222  0.47140452 - 0.07407407
    #   - 0.07407407  1.5         0.25        0.5         0. - 2.]
    #  [6.          6.          1.41421356  4.          8.          4.          5.
    #  4.          4.          0.54545455  0.24793388  0.4979296 - 0.02253944
    #  - 0.02253944  5.5         0.25        0.5         0. - 2.]]


if __name__ == '__main__':
    test()
