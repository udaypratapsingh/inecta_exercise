import 'package:inecta_exercise/Modules/offload/offload_model.dart';
import 'package:inecta_exercise/bloc/bloc.dart';

class OffloadBloc extends Bloc<OffloadStrateModel> {
  
  // Created shared to keep the state alive
  OffloadBloc._internal();
  static final OffloadBloc _shared = OffloadBloc._internal();

  factory OffloadBloc() {
    return _shared;
  }

  @override
  initDefaultValue() {
    return OffloadStrateModel(
        [OffloadModel('Haddock', 50.0), OffloadModel('Redfish', 70.0)],
        OffloadState.none);
  }

  Future<void> updatePrice(OffloadModel model, double amount) async {
    if (model.title == 'Haddock') {
      OffloadModel haddockModel = state.data.first;
      haddockModel.totalPrice += amount;
      emit(state);
    } else {
      OffloadModel haddockModel = state.data.last;
      haddockModel.totalPrice += amount;
      emit(state);
    }
  }

  void updateSelectedData(int index) {
      state.selectedData = state.data[index];
  }
}
