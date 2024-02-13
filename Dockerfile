FROM nvidia/cuda:11.2.0-runtime-ubuntu18.04
FROM jupyter/tensorflow-notebook:tensorflow-2.11.1

#RUN sudo apt-key del 7fa2af80
#RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub

#COPY sources.list /etc/apt/sources.list
#RUN apt-get -y update && apt-get install -y libzbar-dev libgl1-mesa-glx

# Solve opencv dependency issue
#RUN apt-get update
#RUN apt-get install -y libglib2.0-0 libsm6 libxext6 libxrender-dev build-essential

#WORKDIR /home

#EXPOSE 11000

#COPY requirements2.txt /home/
#RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements2.txt

#RUN pip3 install paddlepaddle -i https://mirrors.aliyun.com/pypi/simple
#RUN pip3 install "paddleocr>=2.6.0.3" -i https://mirrors.aliyun.com/pypi/simple
#RUN #pip3 install "paddleclas>=2.4.3" -i https://mirrors.aliyun.com/pypi/simple
#RUN #pip3 install "paddleclas" -i https://mirrors.aliyun.com/pypi/simple
#RUN pip3 install "opencv-python==4.5.5.64" -i https://mirrors.aliyun.com/pypi/simple
#RUN pip3 install typing-extensions --upgrade -i https://mirrors.aliyun.com/pypi/simple

#RUN pip install paddlepaddle -i https://pypi.tuna.tsinghua.edu.cn/simple
#RUN pip install "paddleocr>=2.0.1"

RUN pip3 install paddlepaddle -i https://mirrors.aliyun.com/pypi/simple
RUN pip3 install "paddleocr>=2.6.0.3" -i https://mirrors.aliyun.com/pypi/simple

#RUN #pip install --upgrade keras-cv tensorflow
#RUN pip install --upgrade keras

#RUN pip3 install -U --pre efficientnet
#RUN pip3 install regex
#RUN pip install pytesseract -i https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip3 install pytesseract
RUN pip3 install deskew

#COPY . /usr/src/app/