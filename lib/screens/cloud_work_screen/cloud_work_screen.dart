import 'package:flutter/material.dart';

class CloudWorkScreen extends StatefulWidget {
  const CloudWorkScreen({super.key});

  @override
  State<CloudWorkScreen> createState() => _CloudWorkScreenState();
}

class _CloudWorkScreenState extends State<CloudWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud WORK'),
      ),
    );
  }
}
