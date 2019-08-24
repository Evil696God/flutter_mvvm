import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/common/base/viewmodel/BaseViewModel.dart';
import 'package:flutter_mvvm/common/base/viewmodel/ViewModelProvider.dart';

abstract class BaseState<T extends BaseViewModel,S extends StatefulWidget> extends State<S> {
  T viewModel;
  @override
  void initState() {
    super.initState();
    viewModel =ViewModelProvider.getViewModel(context);
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
