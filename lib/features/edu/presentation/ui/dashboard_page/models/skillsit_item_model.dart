
import 'package:bjit_education/core/utils/image_constant.dart';

/// This class is used in the [skillsit_item_widget] screen.
class SkillsitItemModel {
  SkillsitItemModel({
    this.image,
    this.languageLearning,
    this.id,
  }) {
    image = image ?? ImageConstant.img32215961;
    languageLearning = languageLearning ?? "Language Learning";
    id = id ?? "";
  }

  String? image;

  String? languageLearning;

  String? id;
}
