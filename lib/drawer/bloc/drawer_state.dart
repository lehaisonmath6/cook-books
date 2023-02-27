part of 'drawer_bloc.dart';

class DrawerState extends Equatable {
  final bool isVisible;
  const DrawerState({required this.isVisible});
  @override
  List<Object?> get props => [isVisible];

  DrawerState copyWith(bool? isVisible) =>
      DrawerState(isVisible: isVisible ?? this.isVisible);
}

class DrawerInitial extends DrawerState {
  const DrawerInitial({required super.isVisible});
}
