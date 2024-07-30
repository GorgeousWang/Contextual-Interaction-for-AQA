
## Dependencies
This code has been tested with the following dependencies and versions:
```
python==3.7.9
torch==1.9.0
transformers==3.1.0
numpy==1.19.2
gensim==3.8.3
pytorch-infonce ： pip install info-nce-pytorch #用于对比学习的一个损失函数库

#my env
pip install transformers==4.35.2 #4.43.3会报错
pip install jsonlines
pip install gensim
pip install info-nce-pytorch #用于对比学习的一个损失函数库
pip install textblob

报错：
cannot import name ‘triu’ from ‘scipy.linalg’
https://www.soinside.com/question/brZ46N5EH7bk9xdVwXaQje
找到原因,在SciPy 1.13中去掉了这个函数,所以降低scipy的版本.
pip install scipy==1.10.1

```


## How to Run
```
sh run.sh
```

## something wrong in original code
1. ![image](https://github.com/GorgeousWang/Contextual-Interaction-for-AQA/assets/33348389/da5546a5-d0ed-461b-9aa9-c61e5e206939)
json文件的第二行格式错误`"in case"`

2. 在文件中运行sh run.sh时报错，需要修改sh中数据的路径为：export RECLOR_DIR='./arg_30k'
