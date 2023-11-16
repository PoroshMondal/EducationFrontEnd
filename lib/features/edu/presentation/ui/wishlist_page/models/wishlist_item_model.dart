
import 'package:bjit_education/core/utils/image_constant.dart';

/// This class is used in the [wishlist_item_widget] screen.
class WishlistItemModel {
  WishlistItemModel({
    this.image,
    this.averageRating,
    this.reviewCount,
    this.machineLearning,
    this.markLeuZhuMing,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle246;
    averageRating = averageRating ?? "4.5";
    reviewCount = reviewCount ?? "(498)";
    machineLearning = machineLearning ?? "Machine Learning for Geeks";
    markLeuZhuMing = markLeuZhuMing ?? "Mark Leu Zhu, Ming Kong";
    price = price ?? "৳1999";
    id = id ?? "";
  }

  String? image;

  String? averageRating;

  String? reviewCount;

  String? machineLearning;

  String? markLeuZhuMing;

  String? price;

  String? id;
}
