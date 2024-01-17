// ignore_for_file: must_be_immutable

part of 'wishlist_bloc.dart';

/// Represents the state of Wishlist in the application.
class WishlistState extends Equatable {
  WishlistState({this.wishlistModelObj});

  WishlistModel? wishlistModelObj;

  @override
  List<Object?> get props => [
        wishlistModelObj,
      ];
  WishlistState copyWith({WishlistModel? wishlistModelObj}) {
    return WishlistState(
      wishlistModelObj: wishlistModelObj ?? this.wishlistModelObj,
    );
  }
}
