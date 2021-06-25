#!/bin/sh
# To build container,
# docker build --tag edgetpu_compiler https://github.com/tomassams/docker-edgetpu-compiler.git
# To run container,
# docker run -it --rm -v $(pwd):/home/edgetpu edgetpu_compiler [edgetpu_compiler YOUR_MODEL.tflite]
if [ $# -eq 0 ]
then docker run -it --rm -v $(pwd):/home/edgetpu edgetpu_compiler
else docker run -it --rm -v $(pwd):/home/edgetpu edgetpu_compiler edgetpu_compiler $@
fi
