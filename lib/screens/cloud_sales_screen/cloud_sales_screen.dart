import 'package:flutter/material.dart';

class CloudSalesScreen extends StatelessWidget {
  var jsonList;
  CloudSalesScreen({Key? key, required this.jsonList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloud SALES'),
      ),
      body: ListView.builder(
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return Container();
          },
          itemCount: 4),
    );
  }
}
