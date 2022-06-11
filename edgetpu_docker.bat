@echo off
REM To build container,
REM docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
REM To run container,
REM docker run -it --rm -v /your/modelpath/:/home/edgetpu edgetpu_compiler [edgetpu_compiler YOUR_MODEL.tflite]
REM if "%1" == "" ( docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler ) else ( docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler edgetpu_compiler %* )

set argc=0
for %%x in (%*) do Set /A argc+=1
if %argc% == 0 (
    docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler
    GOTO:EOF
)
if "%1" == "--install" (
    docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
) else (
    docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler edgetpu_compiler %*
)


@echo off
REM To build container,
REM docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
REM To run container,
REM docker run -it --rm -v /your/modelpath/:/home/edgetpu edgetpu_compiler [edgetpu_compiler YOUR_MODEL.tflite]
REM if "%1" == "" ( docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler ) else ( docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler edgetpu_compiler %* )

set argc=0
for %%x in (%*) do Set /A argc+=1
if %argc% == 0 (
    docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler
    GOTO:EOF
)
if "%1" == "--install" (
    docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
) else (
    docker run -it --rm -v %cd%:/home/edgetpu edgetpu_compiler edgetpu_compiler %*
)
