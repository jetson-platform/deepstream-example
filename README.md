# Use the YOLOv5 for deepstream custom ssd parser

## After this steps [LINK](https://github.com/CV-Jetson-Nano/YOLOv5_install_deepstream)

Note: However, This installation requirements should be older than yours deepstream and JatPack version. Therefore, you install the packages that suit you.

## Copy Model dependences

```bash
bash prepare_models.bash
```

## Edit the config_infer_primary_yoloV5.txt file

```bash
[property]
...
network-mode=0
num-detected-classes=1
interval=0
...
```

## create virtual environment

```bash
python3 -m venv venv
```

## vertual environment activate

```bash
source venv/bin/activate
```

## install requirements

```bash
pip install -r requirements.txt
```

## run custom apps

```bash
bash run.bash
```
