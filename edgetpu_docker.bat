@echo off
echo To build container,
echo docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
echo To run container,
echo docker run -it --rm -v /your/modelpath/:/home/edgetpu edgetpu_compiler [edgetpu_compiler YOUR_MODEL.tflite]
docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler
