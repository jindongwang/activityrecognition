# Stratified Transfer Learning

This directory contains the code and the datasets for Stratified Transfer Learning (STL) proposed in the paper [**Stratified Transfer Learning for Cross-domain Activity Recognition**](https://arxiv.org/abs/1801.00820).

## Setup

The code is developed in Matlab. Please use Matlab version 2015+ in case there are some errors. The datasets are also packed in .mat file.

## About the code

- `demo.mat` is a demo to run the algorithm.

- `STL.mat` is the STL algorithm. You are free to tailor it. 
    - Since the algorithm is developed more than one year ago and the paper has been rejected several times, I have somewhat lost the **patience** in developing or maintaining it. Maybe this code is not smooth nor that right, but I'm sure you can find your own way to recitify it.

- `base` directory contains some packaged classifier and preprocessing codes. If you want to use SVM, make sure libsvm installed. Then rename `svmtrain` and `svmpredict` with `libsvmtrain` and `libsvmpredict`, respectively.

- Other than activity recognition, STL algorithm can also be used in other transfer learning applications such as computer vision and text classification (not tested yet).

## About the datasets

The datasets are a little big large that are best not to posted on Github. Please download them alternatively in the following addresses:

- [Address 1 (Kaggle)](https://www.kaggle.com/jindongwang92/crossposition-activity-recognition)
- [Address 2 (Baidu)](https://pan.baidu.com/s/1dF0bQ2t)

## Reference

```
Jindong Wang, Yiqiang Chen, Lisha Hu, Xiaohui Peng, and Philip S. Yu. Stratified Transfer Learning for Cross-domain Activity Recognition. 2018 IEEE International Conference on Pervasive Computing and Communications (PerCom).
```

or in bibtex style:

```
@inproceedings{wang2018stratified,
    title={Stratified Transfer Learning for Cross-domain Activity Recognition},
    author={Wang, Jindong and Chen, Yiqiang and Hu, Lisha and Peng, Xiaohui and Yu, Philip S},
    booktitle={2018 IEEE International Conference on Pervasive Computing and Communications (PerCom)},
    year={2018}
}
```

## Contact

Feel free to contact jindongwang@outlook.com.
