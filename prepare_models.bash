# Get the home directory path

home_dir=$HOME

patch -f $home_dir/DeepStream-Yolo/nvdsinfer_custom_impl_Yolo/nvdsparsebbox_Yolo.cpp yolo_parser_patch

cd /opt/nvidia/deepstream/deepstream-6.3/sources/objectDetector_Yolo/
sudo CUDA_VER=11.4 make -C nvdsinfer_custom_impl_Yolo

cd -

if [ ! -e config_infer_primary_yoloV5.txt ]; then
    cp $home_dir/DeepStream-Yolo/config_infer_primary_yoloV5.txt $PWD/
else
    echo "config_infer_primary_yoloV5.txt already exists!"
fi

if [ ! -e yolov5s.wts ]; then
    cp $home_dir/DeepStream-Yolo/yolov5s.wts $PWD/
else
    echo "yolov5s.wts already exists!"
fi 

if [ ! -e yolov5s.cfg ]; then
    cp $home_dir/DeepStream-Yolo/yolov5s.cfg $PWD/
else
    echo "yolov5s.cfg already exists!"
fi 

if [ ! -e libnvdsinfer_custom_impl_Yolo.so ]; then
    cp $home_dir/DeepStream-Yolo/nvdsinfer_custom_impl_Yolo/libnvdsinfer_custom_impl_Yolo.so $PWD/
else
    echo "libnvdsinfer_custom_impl_Yolo.so already exists!"
fi

if [ ! -e labels.txt ]; then
    cp $home_dir/DeepStream-Yolo/labels.txt $PWD/
else
    echo "labels.txt already exists!"
fi

if [ ! -e model_b1_gpu0_fp32.engine ]; then
    cp $home_dir/DeepStream-Yolo/model_b1_gpu0_fp32.engine $PWD
else
    echo "model_b1_gpu0_fp32.engine already exists!"
fi