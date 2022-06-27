import 'package:flutter_test/flutter_test.dart';
import 'package:inecta_exercise/Modules/offload/offload_bloc.dart';


void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('Upload driving bloc test fetch data', () async {
    OffloadBloc offloadBloc = OffloadBloc();
     offloadBloc.initDefaultValue();
     expect(offloadBloc.state.data.first.title, 'Haddock');
     expect(offloadBloc.state.data.first.totalPrice, 50.0);
     offloadBloc.updatePrice(offloadBloc.state.data.first, 20.0);
     expect(offloadBloc.state.data.first.totalPrice, 70.0);
  });
}