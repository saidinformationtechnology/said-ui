// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
enum DeviceType {Mobile, Tablet, Desktop}

DeviceType getDeviceType(MediaQueryData media) {
  Orientation orientation = media.orientation;

  double width = 0.0;
  if (orientation == Orientation.landscape) {
    width = media.size.height;
  } else {
    width = media.size.width;
  }
  if (width >= 950) {
    return DeviceType.Desktop;
  }
  if (width >= 600) {
    return DeviceType.Tablet;
  }
  return DeviceType.Mobile;
}