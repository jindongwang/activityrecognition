from setuptools import setup

setup(
    name='tsfeature',
    version='0.1.1',
    author='JindongWang',
    author_email='jindongwang@outlook.com',
    url='https://github.com/jindongwang/activityrecognition',
    description='Feature extraction for time series data (activity recognition and other time series)',
    packages=['tsfeature'],
    install_requires=['numpy'],
    entry_points={
            'console_scripts': [
                'seqfeatuure=tsfeature:feature_core.sequence_feature'
            ]}
)
