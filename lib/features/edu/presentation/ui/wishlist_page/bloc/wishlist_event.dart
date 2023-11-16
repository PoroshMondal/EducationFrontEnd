// ignore_for_file: must_be_immutable

part of 'wishlist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Wishlist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishlistEvent extends Equatable {}

/// Event that is dispatched when the Wishlist widget is first created.
class WishlistInitialEvent extends WishlistEvent {
  @override
  List<Object?> get props => [];
}
