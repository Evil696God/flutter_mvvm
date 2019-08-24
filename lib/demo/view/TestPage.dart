import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/common/base/view/BaseStatefulWidget.dart';
import 'package:flutter_mvvm/demo/viewmodel/TestViewModel.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestState();
}

class TestState extends BaseState<TestViewModel, TestPage> {
  @override
  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter使用范例"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("点击获得数据"),
              onPressed: () {
                viewModel.getTestData();
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: StreamBuilder(
                  stream: viewModel.getDataStream(),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Text(
                        snapshot.hasError ? snapshot.error : snapshot.data);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
