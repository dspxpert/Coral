# Google Coral USB Accelerator


https://coral.ai/docs/accelerator/get-started/


[MS VC++ 2019 redistributable](https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads)

[edgetpu_runtime_20210119.zip](https://github.com/google-coral/libedgetpu/releases/download/release-frogfish/edgetpu_runtime_20210119.zip)


python3 -m pip install --extra-index-url https://google-coral.github.io/py-repo/ pycoral


mkdir coral && cd coral

git clone https://github.com/google-coral/pycoral.git

cd pycoral

bash examples/install_requirements.sh classify_image.py

python3 examples/classify_image.py \
--model test_data/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite \
--labels test_data/inat_bird_labels.txt \
--input test_data/parrot.jpg
