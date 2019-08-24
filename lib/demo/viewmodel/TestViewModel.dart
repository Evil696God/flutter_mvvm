import 'package:flutter_mvvm/common/base/model/BaseModel.dart';
import 'package:flutter_mvvm/common/base/viewmodel/BaseViewModel.dart';
import 'package:flutter_mvvm/demo/model/TestModel.dart';

class TestViewModel extends BaseViewModel<TestModel>{
  @override
  TestModel initModel() => TestModel();

  String getTestData() {
    return model.getTestData();
  }

  Stream<String> getDataStream()=>model.dataStream;
}
