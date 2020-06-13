# Realtime Food Detection ML Model

Real-time object detection in Flutter using [camera](https://pub.dartlang.org/packages/camera) and [tflite](https://pub.dartlang.org/packages/tflite) plugin. The Machine Learning model created for now is done with Tensor Flow Lite and Flutter. The app creates a bounding box on an object and gives the name of the object and also the accuracy of the subject. The image is put up in the Images directory.

## Install 

```
flutter packages get
```

## Run

```
flutter run
```

## Models

- Image Classification
  - MobileNet

- Object Detection
  - SSD MobileNet
  - Yolov2 Tiny

- Pose Estimation 
  - PoseNet



