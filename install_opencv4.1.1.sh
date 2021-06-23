# https://blog.naver.com/roboholic84/221861998537

sudo apt install build-essential cmake unzip pkg-config
sudo apt install libjpeg-dev libpng-dev libtiff-dev
sudo apt install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt install libxvidcore-dev libx264-dev
sudo apt install libgtk-3-dev
sudo apt install libatlas-base-dev gfortran
sudo apt install python3-dev

git clone https://github.com/pjalusic/opencv4.1.1-for-google-coral.git
cp opencv4.1.1-for-google-coral/cv2.so /usr/local/lib/python3.7/dist-packages/cv2.so
sudo cp -r opencv4.1.1-for-google-coral/libraries/. /usr/local/lib

sudo apt install python3-opencv
