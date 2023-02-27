import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const DrawerInitial(isVisible: false)) {
    on<EventToggleDrawer>((event, emit) {
      // print("toggle drawer");
    });
  }
}
