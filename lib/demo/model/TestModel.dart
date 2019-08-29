import 'package:flutter_mvvm/common/base/basewidget/model/BaseModel.dart';
import 'package:rxdart/rxdart.dart';

class TestModel extends BaseModel {
  BehaviorSubject<String> _dataObservable = BehaviorSubject();

  Stream<String> get dataStream => _dataObservable.stream;

  getTestData() {
    return _dataObservable.add("获得测试数据");
  }

  void dispose() {
    _dataObservable.close();
    super.dispose();
  }
}
