@echo off
REM To build container,
REM docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
REM To run container,
REM docker run -it --rm -v /your/modelpath/:/home/edgetpu edgetpu_compiler [edgetpu_compiler YOUR_MODEL.tflite]
if "%1" == "" ( docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler ) else ( docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler edgetpu_compiler %1 %2 %3 %4 %5 %6 %7 %8 %9 )
