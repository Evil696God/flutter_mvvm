import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/common/base/basewidget/model/BaseModel.dart';
/**
 * 基础ViewModel类
 *
 * @date: 2019-08-26
 * @version: 1.0
 * @author: wangchenxing
 */
abstract class BaseViewModel<T extends BaseModel> {
  T model;

  @mustCallSuper
  void init(BuildContext context) {
    model = initModel();
  }

  T initModel();

  void dispose() {
    if (model != null) {
      model.dispose();
    }
  }
}
