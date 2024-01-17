
import 'package:bjit_education/core/utils/Constants/image_constant.dart';

/// This class is used in the [dashboardpageone_item_widget] screen.
class DashboardpageoneItemModel {
  DashboardpageoneItemModel({
    this.coursePhoto,
    this.id,
  }) {
    coursePhoto = coursePhoto ?? ImageConstant.imgCoursePhoto;
    id = id ?? "";
  }

  String? coursePhoto;

  String? id;
}
