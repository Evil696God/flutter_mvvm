import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/common/base/viewmodel/BaseViewModel.dart';

/**
 * 绑定View和ViewModel
 */
class ViewModelProvider<T extends BaseViewModel> extends StatefulWidget {
  final T viewModel;
  final Widget child;

  const ViewModelProvider({@required this.viewModel, @required this.child});

  @override
  State<StatefulWidget> createState() => ViewModelProviderState();

  static T getViewModel<T extends BaseViewModel>(BuildContext context) {
    final type = _typeOf<ViewModelProvider<T>>();
    ViewModelProvider<T> viewModelProvider = context.ancestorWidgetOfExactType(type);
    return viewModelProvider.viewModel;
  }

  static Type _typeOf<T>() => T;
}

class ViewModelProviderState extends State<ViewModelProvider> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    widget.viewModel.dispose();
    super.dispose();
  }
}
