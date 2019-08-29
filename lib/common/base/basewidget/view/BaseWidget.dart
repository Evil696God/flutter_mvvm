import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/common/base/basecomponent/BaseComponent.dart';
import 'package:flutter_mvvm/common/base/basewidget/viewmodel/BaseViewModel.dart';
import 'package:flutter_mvvm/common/base/basewidget/viewmodel/ViewModelProvider.dart';

/**
 * 基础widget类
 *
 * @date: 2019-08-26
 * @version: 1.0
 * @author: wangchenxing
 */
abstract class BaseStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => initState();

  State initState();
}

abstract class BaseStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => initState();

  Widget initState();
}

abstract class BaseState<T extends BaseViewModel, S extends StatefulWidget>
    extends BaseComponent<S> {
  T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = ViewModelProvider.getViewModel(context);
    viewModel.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget();

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}
