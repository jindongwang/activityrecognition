<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

| Index | Dataset | Type | #Subjects | Sampling Rate | Activity | Sample | Sensors | Reference |
|:-----:|:------------------------:|:----------------:|:---------:|:-------------:|:--------:|:--------:|:--------------:|:---------:|
| 1 | OPPORTUNITY | ADL | 4 | 32 Hz | 16 | 701366 | A, G, M, O, AM |  |
| 2 | Skoda Mini Checkpoint | Factory | 1 | 96 Hz | 10 | 22000 | A |  |
| 3 | UCI Smartphone | ADL | 30 | 50 Hz | 6 | 10299 | A, G |  |
| 4 | PAMAP2 | ADL | 9 | 100 Hz | 18 | 2844868 | A, G, M |  |
| 5 | USC-had | ADL | 14 | 100 Hz | 12 | 2520000 | A, G |  |
| 6 | WISDM | ADL | 29 | 20 Hz | 6 | 1098207 | A |  |
| 7 | DSADS | ADL | 8 | 25 Hz | 19 | 1140000 | A, G, M |  |
| 8 | ambient kitchen | Food preparation | 20 | 40 Hz | 2 | 55000 | O |  |
| 9 | Darmstadt Daily Routines | ADL | 1 | 100 Hz | 35 | 24000 | A |  |
| 10 | Actitracker | ADL | 36 | 20 Hz | 6 | 2980765 | A |  |
| 11 | SHO | ADL | 10 | 50 Hz | 7 | 630000 | A, G, M |  |
| 12 | BIDMC | Heart failure | 15 | 125 Hz | 2 | > 20000 | IP, ECG, PPG |  |
| 13 | mhealth | ADL | 10 | 50 | 12 | 16740 | A, C, G |  |
| 14 | Daphnet Gait dataset | Gait | 10 | 64 | 2 | 1917887 | A |  |
| 15 | ActiveMiles | ADL | 10 | 50-200Hz | 7 | 4390726 | A |  |
| 16 | HASC | ADL | 1 | 200 Hz | 13 | NA | A |  |
| 17 | PAF | PAF | 48 | 128 Hz | 2 | 230400 | EEG |  |
| 18 | ActRectut | Gesture | 2 | 32 Hz | 12 | 102613 | A, G |  |
| 19 | Heterogeneouss | ADL | 9 | 100-200 Hz | 6 | 43930257 | A, G |  |

- [行为识别公开数据集整理](#行为识别公开数据集整理)
    - [1.Opportunity](#1opportunity)
        - [1.1网址与下载](#11网址与下载)
        - [1.2描述](#12描述)
        - [1.3引用此数据集的文章](#13引用此数据集的文章)
    - [2.UCI daily and sports dataset](#2uci-daily-and-sports-dataset)
        - [2.1网址与下载](#21网址与下载)
        - [2.2描述](#22描述)
        - [2.3引用此数据集的文章](#23引用此数据集的文章)
    - [3.Activity recognition from single chest-mounted accelerometer data set](#3activity-recognition-from-single-chest-mounted-accelerometer-data-set)
        - [3.1网址与下载](#31网址与下载)
        - [3.2描述](#32描述)
        - [3.3引用此数据集的文章](#33引用此数据集的文章)
    - [4.Gas sensors for home activity monitoring Data Set](#4gas-sensors-for-home-activity-monitoring-data-set)
        - [4.1网址与下载](#41网址与下载)
        - [4.2描述](#42描述)
        - [4.3引用此数据集的文章](#43引用此数据集的文章)
    - [5.Human activity recognition using smartphones data set](#5human-activity-recognition-using-smartphones-data-set)
        - [5.1网址与下载](#51网址与下载)
        - [5.2描述](#52描述)
        - [5.3引用此数据集的文章](#53引用此数据集的文章)
    - [6.Heterogeneity activity recognition data set](#6heterogeneity-activity-recognition-data-set)
        - [6.1网址与下载](#61网址与下载)
        - [6.2描述](#62描述)
        - [6.3引用此数据集的文章](#63引用此数据集的文章)

###1.Opportunity

####1.1网址与下载

[Opportunity](https://archive.ics.uci.edu/ml/datasets/OPPORTUNITY+Activity+Recognition)

####1.2描述

数据集包括4个用户的6种大类（track）的将近100种行为：
这6个track及其行为是：
	Unique index   -   Track name   -   Label name

	1   -   Locomotion   -   Stand
	2   -   Locomotion   -   Walk
	4   -   Locomotion   -   Sit
	5   -   Locomotion   -   Lie
	101   -   HL_Activity   -   Relaxing
	102   -   HL_Activity   -   Coffee time
	103   -   HL_Activity   -   Early morning
	104   -   HL_Activity   -   Cleanup
	105   -   HL_Activity   -   Sandwich time
	201   -   LL_Left_Arm   -   unlock
	202   -   LL_Left_Arm   -   stir
	203   -   LL_Left_Arm   -   lock
	204   -   LL_Left_Arm   -   close
	205   -   LL_Left_Arm   -   reach
	206   -   LL_Left_Arm   -   open
	207   -   LL_Left_Arm   -   sip
	208   -   LL_Left_Arm   -   clean
	209   -   LL_Left_Arm   -   bite
	210   -   LL_Left_Arm   -   cut
	211   -   LL_Left_Arm   -   spread
	212   -   LL_Left_Arm   -   release
	213   -   LL_Left_Arm   -   move
	301   -   LL_Left_Arm_Object   -   Bottle
	302   -   LL_Left_Arm_Object   -   Salami
	303   -   LL_Left_Arm_Object   -   Bread
	304   -   LL_Left_Arm_Object   -   Sugar
	305   -   LL_Left_Arm_Object   -   Dishwasher
	306   -   LL_Left_Arm_Object   -   Switch
	307   -   LL_Left_Arm_Object   -   Milk
	308   -   LL_Left_Arm_Object   -   Drawer3 (lower)
	309   -   LL_Left_Arm_Object   -   Spoon
	310   -   LL_Left_Arm_Object   -   Knife cheese
	311   -   LL_Left_Arm_Object   -   Drawer2 (middle)
	312   -   LL_Left_Arm_Object   -   Table
	313   -   LL_Left_Arm_Object   -   Glass
	314   -   LL_Left_Arm_Object   -   Cheese
	315   -   LL_Left_Arm_Object   -   Chair
	316   -   LL_Left_Arm_Object   -   Door1
	317   -   LL_Left_Arm_Object   -   Door2
	318   -   LL_Left_Arm_Object   -   Plate
	319   -   LL_Left_Arm_Object   -   Drawer1 (top)
	320   -   LL_Left_Arm_Object   -   Fridge
	321   -   LL_Left_Arm_Object   -   Cup
	322   -   LL_Left_Arm_Object   -   Knife salami
	323   -   LL_Left_Arm_Object   -   Lazychair
	401   -   LL_Right_Arm   -   unlock
	402   -   LL_Right_Arm   -   stir
	403   -   LL_Right_Arm   -   lock
	404   -   LL_Right_Arm   -   close
	405   -   LL_Right_Arm   -   reach
	406   -   LL_Right_Arm   -   open
	407   -   LL_Right_Arm   -   sip
	408   -   LL_Right_Arm   -   clean
	409   -   LL_Right_Arm   -   bite
	410   -   LL_Right_Arm   -   cut
	411   -   LL_Right_Arm   -   spread
	412   -   LL_Right_Arm   -   release
	413   -   LL_Right_Arm   -   move
	501   -   LL_Right_Arm_Object   -   Bottle
	502   -   LL_Right_Arm_Object   -   Salami
	503   -   LL_Right_Arm_Object   -   Bread
	504   -   LL_Right_Arm_Object   -   Sugar
	505   -   LL_Right_Arm_Object   -   Dishwasher
	506   -   LL_Right_Arm_Object   -   Switch
	507   -   LL_Right_Arm_Object   -   Milk
	508   -   LL_Right_Arm_Object   -   Drawer3 (lower)
	509   -   LL_Right_Arm_Object   -   Spoon
	510   -   LL_Right_Arm_Object   -   Knife cheese
	511   -   LL_Right_Arm_Object   -   Drawer2 (middle)
	512   -   LL_Right_Arm_Object   -   Table
	513   -   LL_Right_Arm_Object   -   Glass
	514   -   LL_Right_Arm_Object   -   Cheese
	515   -   LL_Right_Arm_Object   -   Chair
	516   -   LL_Right_Arm_Object   -   Door1
	517   -   LL_Right_Arm_Object   -   Door2
	518   -   LL_Right_Arm_Object   -   Plate
	519   -   LL_Right_Arm_Object   -   Drawer1 (top)
	520   -   LL_Right_Arm_Object   -   Fridge
	521   -   LL_Right_Arm_Object   -   Cup
	522   -   LL_Right_Arm_Object   -   Knife salami
	523   -   LL_Right_Arm_Object   -   Lazychair
	406516   -   ML_Both_Arms   -   Open Door 1
	406517   -   ML_Both_Arms   -   Open Door 2
	404516   -   ML_Both_Arms   -   Close Door 1
	404517   -   ML_Both_Arms   -   Close Door 2
	406520   -   ML_Both_Arms   -   Open Fridge
	404520   -   ML_Both_Arms   -   Close Fridge
	406505   -   ML_Both_Arms   -   Open Dishwasher
	404505   -   ML_Both_Arms   -   Close Dishwasher
	406519   -   ML_Both_Arms   -   Open Drawer 1
	404519   -   ML_Both_Arms   -   Close Drawer 1
	406511   -   ML_Both_Arms   -   Open Drawer 2
	404511   -   ML_Both_Arms   -   Close Drawer 2
	406508   -   ML_Both_Arms   -   Open Drawer 3
	404508   -   ML_Both_Arms   -   Close Drawer 3
	408512   -   ML_Both_Arms   -   Clean Table
	407521   -   ML_Both_Arms   -   Drink from Cup
	405506   -   ML_Both_Arms   -   Toggle Switch

2.一共使用了3大类传感器：惯性、物体传感器、环境传感器。

3.数据分为24个子文件，每个用户有6个文件，分别以S-0X开头。最后一个文件是drill，表示是用户按照预先要求的动作序列做出相应的动作。

4.除去label列，数据一行有250列，其中第1列是时间戳，第2-243是数据列，244-250是label列。

####1.3引用此数据集的文章

**First party** 

[1] Daniel Roggen, Alberto Calatroni, Mirco Rossi, Thomas Holleczek, Gerhard Tröster, Paul Lukowicz, Gerald Pirkl, David Bannach, Alois Ferscha, Jakob Doppler, Clemens Holzmann, Marc Kurz, Gerald Holl, Ricardo Chavarriaga, Hesam Sagha, Hamidreza Bayati, and José del R. Millán. Collecting complex activity data sets in highly rich networked sensor environments. In Seventh International Conference on Networked Sensing Systems (INSS’10), Kassel, Germany, 6 2010. 

描述了opportunity数据集，并对其进行评估

[2] Hesam Sagha, Sundara Tejaswi Digumarti, José del R. Millán, Ricardo Chavarriaga, Alberto Calatroni, Daniel Roggen, Gerhard Tröster. Benchmarking classification techniques using the Opportunity human activity dataset. IEEE International Conference on Systems, Man, and Cybernetics, Anchorage, AK, USA, October 9-12, 2011 

对数据集用不同分类器进行测试

[3] R. Chavarriaga et al. Ensemble creation and reconfiguration for activity recognition: An information theoretic approach. IEEE Conf Systems, Man, and Cybernetics (SMC), 2011 

在数据集上使用多种分类器集成的方法来进行行为识别预测

[4] H. Sagha et al. Detecting anomalies to improve classification performance in an opportunistic sensor network. 7th IEEE International Workshop on Sensor Networks and Systems for Pervasive Computing (PerSens), 2011. 

用两种数据集将不同的传感器与不同的分类器进行融合从而实现行为识别

[5] A. Calatroni et al., Automatic transfer of activity recognition capabilities between body-worn motion sensors: Training newcomers to recognize locomotion. 8th International Conference on Networked Sensing Systems (INSS), 2011 

用三种不同的数据集（SIMPROB,ADL,KID）分别进行训练，目的是协助专家进行临床检测

[6] M. Kurz et al. Dynamic Quantification of Activity Recognition Capabilities in Opportunistic Systems. Fourth Conference on Context Awareness for Proactive Systems, 2011 

[7] H. Sagha et al. Detecting and rectifying anomalies in Opportunistic sensor networks. International Conference on Body Sensor Networks (BSN), 2011 

[8] R. Chavarriaga et al. Robust activity recognition for assistive technologies: Benchmarking ML techniques. Workshop on Machine Learning for Assistive Technologies at the 24th Annual Conference on Neural Information Processing Systems (NIPS), 2010. 

[9] P. Lukowicz et al. Recording a complex, multi modal activity data set for context recognition 1st Workshop on Context-Systems Design. Evaluation and Optimisation at ARCS, 2010, 2010 

[10] R. Chavarriaga, H. Sagha, A. Calatroni, S. Digumarti, G. Tröster, J. del R. Millán, D. Roggen. The Opportunity challenge: A benchmark database for on-body sensor-based activity recognition. Pattern Recognition Letters, 2013 

[11] L.-V. Nguyen-Dinh, D. Roggen, A. Calatroni, G. Tröster. Improving online gesture recognition with template matching methods in accelerometer data Proc 12th Int Conf on Intelligent Systems Design and Applications, 2012 

在数据集上使用LCSS算法进行在线行为识别，并且与DTW算法进行比较

**Third party** 
Here are a few of the papers from third parties using the OPPORTUNITY dataset: 

[100] T. Plötz, N. Y. Hammerla, P. Olivier. Feature Learning for Activity Recognition in Ubiquitous Computing. IJCAI, 2011 

欲用普适方法解决行为识别问题，使用特征学习解决特征提取方法的缺失，其中使用了大量数据集，包括opportunity数据集

[101] A. Manzoor et al., Identifying Important Action Primitives for High Level Activity Recognition. Proc. European Conference on Smart Sensing and Context (EuroSSC), 2010 

[102] T. Ploetz, N. Hammerla, A. Rozga, A. Reavis, N. Call, G. Abowd. Automatic Assessment of Problem Behavior in Individuals with Developmental Disabilities. Proc. 14th Int Conf on Ubiquitous Computing, 2012. 

[103] D. Gordon, J. Czerny, M. Beigl. Activity Recognition for Creatures of Habit: Energy-Efficient Embedded Classification using Prediction. Personal and Ubiquitous Computing, 2013.


###2.UCI daily and sports dataset

####2.1网址与下载

[UCI daily and sports dataset](http://archive.ics.uci.edu/ml/datasets/Daily+and+Sports+Activities)

####2.2描述

（1）运动人数：8人(4 female, 4 male, between the ages 20 and 30)

（2）运动时间：5分钟/人

（3）行为类别：19种日常行为，分别用1-19这19个数据来表示

（4）数据尺寸：每人记录5分钟的总运动时长

（5）采样频率：25Hz

（6）传感器：三轴加速度计、三轴陀螺仪、三轴磁力计

在身体的5个部分分别放置这三种传感器，于是一条记录有5 * 3 * 3 = 45列数据。

身体的5个部分：torso (T), right arm (RA), left arm (LA), right leg (RL), left leg (LL)。

（7）具体行为：

	1,sitting,
	
	2,standing,
	
	3,lying on back,
	
	4,lying on right side,
	
	5,ascending stairs,
	
	6,descending stairs,
	
	7,standing in an elevator still,
	
	8,moving around in an elevator,
	
	9,walking in a parking lot,
	
	10,walking on a treadmill with a speed of 4 kmh,
	
	11,walking in flat and 15 deg inclined positions,
	
	12,running on a treadmill with a speed of 8 kmh,
	
	13,exercising on a stepper,
	
	14,exercising on a cross trainer,
	
	15,cycling on an exercise bike in horizontal positions,
	
	16,cycling on an exercise bike in vertical positions,
	
	17,rowing,
	
	18,jumping,
	
	19,playing basketball,
	
2.原始数据（/data/raw文件夹）：

（1）用a前缀表示行为，用p前缀表示人；

（2）将每一分钟的数据分为12段保存成一个文件，于是每人每种行为有60段，对应s01-s60.txt这60个文件；

（3）每个文件有45列，对应45个记录数据。

3.处理后的数据（/data/processed文件夹及UCIActDB.db文件）：

（1）一种保存方式是sqlite数据库，见UCIActDB.db文件，
包含p1-p8这8张表表示8个人的数据（自增的时间id+45列传感器数据+最后一列label表示行为id）及activitylabels这张表表示行为id和行为的对应表；
	
（2）另一种方式是每个人的txt文件（p1-p8.txt），与数据库是一一对应的。

（3）行为类别：在activitylabels.csv文件中。

（4）提的特征文件：数据说明

1.根据原始数据，一共提了405维特征（27 * 3 * 5）.

2.原始特征文件为UCIADL_all_orig，归一化后的为UCIADL_all_norm.

所有特征文件一行有408列，其中前405列为特征列，第406列是标签列（1-19），第407列是计数列，第408列用来标识是哪个人（1-8）.

3.用PCA进行降维到30维后的文件为UCIADL_30_orig,归一化后的为UCIADL_30_norm.

30维特征文件一行有32列，前30列为特征，第31列为label（1-19），第32列来标识是哪个人（1-8）.

【处理过的特征文件获取，请联系jindongwang@outlook.com索取】

####2.3引用此数据集的文章

[1] K. Altun, B. Barshan, and O. Tunçel,
Comparative study on classifying human activities with miniature inertial and magnetic sensors.Pattern Recognition, 43(10):3605-3620, October 2010.

在同一个行为识别数据集上进行了多种机器学习算法的性能比较。

[2] B. Barshan and M. C. Yüksek, Recognizing daily and sports activities in two open source machine learning environments using body-worn sensor units The Computer Journal, 57(11):1649--1667, November 2014.

在数据上使用了不同的机器学习算法，GMMs的正确率最高，还比较了在传感器放置的不同位置以及不同的传感器时的分类效果。

[3]K. Altun and B. Barshan,Human activity recognition using inertial/magnetic sensor units,'' Proceedings First International Workshop on Human Behavior Understanding. in conjunction with the 20th Int. Conf. on Pattern Recognition), 22 August 2010, Istanbul, Turkey,A. A. Salah, T. Gevers, N. Sebe, A. Vinciarelli (editors), HBU 2010, LNCS 6219, pp.38-51, Springer: Berlin, Heidelberg, 2010.

在同一个行为识别数据集上进行了多种机器学习算法的性能比较,在降维中除了使用PCA，还加入了SFFS，在小样本集中SFFS有更好的效果。

###3.Activity recognition from single chest-mounted accelerometer data set

####3.1网址与下载
[Activity recognition from single chest-mounted accelerometer data set](https://archive.ics.uci.edu/ml/datasets/Activity+Recognition+from+Single+Chest-Mounted+Accelerometer)

####3.2描述

传感器：加速度传感器

采样频率：52HZ

加速度数据未校准

人数：15

活动类别：7

文件类型：csv

文件格式：每个csv文件为一个人的样本，文件中属性为sequential number, x acceleration, y acceleration, z acceleration,
label，其中label列的数字表示为

1: Working at Computer

2: Standing Up, Walking and Going updown stairs

3: Standing

4: Walking

5: Going UpDown Stairs

6: Walking and Talking with Someone

7: Talking while Standing

####3.3引用此数据集的文章

[1]Casale, P. Pujol, O. and Radeva, P. BeaStreamer-v0.1: a new platform for Multi-Sensors Data Acquisition in Wearable Computing Applications, CVCRD09, ISBN: 978-84-937261-1-9, 2009

设计了一个新的平台BeaStreamer-v0.1，通过它可以轻松获取不同种类数据，可以连接不同种传感器

[2]Casale, P. Pujol, O. and Radeva, P. Human activity recognition from accelerometer data using a wearable device, IbPRIA'11, 289-296, Springer-Verlag, 2011

采集可穿戴设备的加速度数据，使用随机森林进行行为识别

[3]Casale, P. Pujol, O. and Radeva, P. Personalization and user verification in wearable systems using biometric walking patterns. Personal and Ubiquitous Computing, 16(5), 563-580, 2012

使用两种不同的数据集基于两个阶段进行行为识别，第一阶段是用特定用户的小样本进行分类，第二阶段是属于一类分类问题，建立四层结构来解决

###4.Gas sensors for home activity monitoring Data Set

####4.1网址与下载

[Gas sensors for home activity monitoring Data Set](https://archive.ics.uci.edu/ml/datasets/Gas+sensors+for+home+activity+monitoring)

####4.2描述

样本数量：919438

属性：11

传感器：8 MOX gas sensors, and a temperature and humidity sensor

Temperature and humidity were measured using the Sensirion SHT75.

The 8 MOX sensors are commercially available from Figaro, and are detailed below:

R1: TGS2611

R2: TGS2612

R3: TGS2610

R4: TGS2600

R5: TGS2602

R6: TGS2602

R7: TGS2620

R8: TGS2620

刺激：wine、banana，将两种刺激物分别放在传感器附近，持续时间7分钟到2小时，平均时间是42分钟，比较这三种情况，wine、banana、background
HT_Sensor_metadata.dat每列属性：

* id: identification of the induction, to be matched with id in file HT_Sensor_dataset.dat;
* date: day, month and year when this induction was recorded;
* class: what was used to generate this induction (wine, banana or background);
* t0: time in hours in which the induction started (represents the time zero in file HT_Sensor_dataset.dat);
* dt: interval that this induction lasted.

HT_Sensor_dataset.dat每列属性：

* id: identification of the induction, to be matched with id in file HT_Sensor_metadata.dat;
* time: time in hours, where zero is the start of the induction;
* R1 到 R8: value of each of the 8 MOX sensors resistance at that time;
* Temp.: measurement of temperature in Celsius at that time;
* Humidity: measurement of humidity in percent at that time.

【如果使用python，作者附python代码去导入数据，github网址：
https://github.com/thmosqueiro/ENose-Decorr_Humdt_Temp
压缩包：ENose-Decorr_Humdt_Temp-master.zip】

####4.3引用此数据集的文章

[1] Ramon Huerta, Thiago Mosqueiro, Jordi Fonollosa, Nikolai Rulkov, Irene Rodriguez-Lujan. Online Decorrelation of Humidity and Temperature in Chemical Sensors for Continuous Monitoring. Chemometrics and Intelligent Laboratory Systems 2016.

测试了湿度和温度传感器在模式识别中的效果。

###5.Human activity recognition using smartphones data set

####5.1网址与下载

[Human activity recognition using smartphones data set](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

####5.2描述

样本数量：10299

属性：561

采样：30个人，年龄在19-48之间

活动类型：WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

传感器：加速度传感器、陀螺仪

采样频率：50HZ

数据集：70%训练样本，30%测试样本

预处理：噪声滤波，滑动窗口（2.56sec，50%overlap），其中加速度传感器信号使用巴特沃斯低通滤波器（Butterworth low-pass filter）分离成身体加速度和重力。由于重力只有低频率成分,因此滤波器使用0.3HZ截止频率。在每个窗口,一个向量的特性是通过计算变量的时间和频率域得到的，共561个特征。

更新的数据集：Smartphone-Based Recognition of Human Activities and Postural Transitions Data Set，在这个数据集中作者在已有的六个活动基础上增加了stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand.这些状态改变的样本，并且此数据集的数据为原始数据，而不是预处理后的数据。

####5.3引用此数据集的文章

[1]Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

在数据集上使用SVM进行行为识别，并且提出了MC-HF-SVM，可以减少运算时间.

[2]Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

利用定点计算改进SVM从而提高行为识别准确率.

[3]Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

在数据集上用不同机器学习算法测试正确率.

###6.Heterogeneity activity recognition data set

####6.1网址与下载

[Heterogeneity activity recognition data set](https://archive.ics.uci.edu/ml/datasets/Heterogeneity+Activity+Recognition)

####6.2描述

样本数量：43930257

属性：16
Activities: ‘Biking’, ‘Sitting’, ‘Standing’, ‘Walking’, ‘Stair Up’ and ‘Stair down’.

Sensors: Sensors: Two embedded sensors, i.e., Accelerometer and Gyroscope, sampled at the highest frequency the respective device allows.

Devices: 4 smartwatches (2 LG watches, 2 Samsung Galaxy Gears)

8 smartphones (2 Samsung Galaxy S3 mini, 2 Samsung Galaxy S3, 2 LG Nexus 4, 2 Samsung Galaxy S+)

Recordings: 9 users

Activity recognition exp.zip包含了不同设备、不同传感器的行为数据

Still exp.zip增加了手机放置的位置，不同位置下包含了多种设备所采集的行为数据

####6.3引用此数据集的文章

[1] Allan Stisen, Henrik Blunck, Sourav Bhattacharya, Thor Siiger Prentow, Mikkel Baun Kjærgaard, Anind Dey, Tobias Sonne, and Mads Møller Jensen. Smart Devices are Different: Assessing and Mitigating Mobile Sensing Heterogeneities for Activity Recognition. In Proc. 13th ACM Conference on Embedded Networked Sensor Systems (SenSys 2015), Seoul, Korea, 2015.

在数据集上对不同设备、不同放置位置、不同传感器所达到的行为识别效果进行分析
