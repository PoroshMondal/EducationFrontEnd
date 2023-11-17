

import 'package:bjit_education/core/utils/image_constant.dart';

/// This class is used in the [mylearning_item_widget] screen.
class MylearningItemModel {
  MylearningItemModel({
    this.image,
    this.minutePython,
    this.nathanChadler,
    this.complete,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle24;
    minutePython = minutePython ?? "60-Minute Python Bootcamp";
    nathanChadler = nathanChadler ?? "Nathan Chadler, Evan Yong";
    complete = complete ?? "25% complete";
    id = id ?? "";
  }

  String? image;

  String? minutePython;

  String? nathanChadler;

  String? complete;

  String? id;
}
