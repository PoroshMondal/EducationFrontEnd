import 'package:bjit_education/core/utils/image_constant.dart';
import 'package:bjit_education/features/edu/presentation/ui/wishlist_page/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/wishlist_item_model.dart';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

/// A bloc that manages the state of a Wishlist according to the event that is dispatched to it.
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc(WishlistState initialState) : super(initialState) {
    on<WishlistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishlistInitialEvent event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(
        wishlistModelObj: state.wishlistModelObj?.copyWith(
      wishlistItemList: fillWishlistItemList(),
    )));
  }

  List<WishlistItemModel> fillWishlistItemList() {
    return [
      WishlistItemModel(
          image: ImageConstant.imgRectangle246,
          averageRating: "4.5",
          reviewCount: "(498)",
          machineLearning: "Machine Learning for Geeks",
          markLeuZhuMing: "Mark Leu Zhu, Ming Kong",
          price: "৳1999"),
      WishlistItemModel(
          image: ImageConstant.imgRectangle247,
          averageRating: "4.6",
          reviewCount: "(15,289)",
          machineLearning: "Cooking Essentials: Beginner Guide",
          markLeuZhuMing: "Master Chef Jack Fraser",
          price: "৳2999"),
      WishlistItemModel(
          image: ImageConstant.imgRectangle248,
          averageRating: "4.0",
          reviewCount: "(15,125)",
          machineLearning: "Python with Django for Beginners",
          markLeuZhuMing: "Hussain AzmatUllah, Karim Saud",
          price: "৳1199"),
      WishlistItemModel(
          image: ImageConstant.imgRectangle249,
          averageRating: "4.5",
          reviewCount: "(498)",
          machineLearning: "Blockchain Bootcamp 2023",
          markLeuZhuMing: "Pran Kumar, Atul Shah",
          price: "৳1499"),
      WishlistItemModel(
          image: ImageConstant.imgRectangle2411,
          averageRating: "4.5",
          reviewCount: "(7,549)",
          machineLearning: "Master Your Mindset & Brain",
          markLeuZhuMing: "Anna Parkinsons, Steve Hewitt",
          price: "৳1799"),
      WishlistItemModel(
          image: ImageConstant.imgRectangle2412,
          averageRating: "4.5",
          reviewCount: "(498)",
          machineLearning: "Emotional Intelligence & Com Skills",
          markLeuZhuMing: "Mark Leu Zhu, Ming Kong",
          price: "৳1999"),
      WishlistItemModel(
          averageRating: "4.2",
          reviewCount: "(44,489)",
          machineLearning: "The Complete Android MasterClass",
          markLeuZhuMing: "Stephen Chow, Zack Ryder",
          price: "৳1999")
    ];
  }
}
