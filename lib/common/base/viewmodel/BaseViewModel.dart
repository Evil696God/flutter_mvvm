import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/common/base/model/BaseModel.dart';

/**
 * 基础ViewModel类
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
