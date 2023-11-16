// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'wishlist_item_model.dart';

/// This class defines the variables used in the [wishlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistModel extends Equatable {
  WishlistModel({this.wishlistItemList = const []}) {}

  List<WishlistItemModel> wishlistItemList;

  WishlistModel copyWith({List<WishlistItemModel>? wishlistItemList}) {
    return WishlistModel(
      wishlistItemList: wishlistItemList ?? this.wishlistItemList,
    );
  }

  @override
  List<Object?> get props => [wishlistItemList];
}
