
import 'dart:ffi';

class OffloadModel {
   String title;
   double totalPrice;
  OffloadModel(this.title, this.totalPrice);
}

class OffloadStrateModel {
   late List<OffloadModel> data;
   OffloadState state;
   OffloadModel? selectedData;
  OffloadStrateModel(this.data, this.state);
}


enum OffloadState {
  none,
  haddock,
  redfish,
}