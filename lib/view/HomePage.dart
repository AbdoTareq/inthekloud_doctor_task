import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Title'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(child: Image.asset('assets/images/logo.png')),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
