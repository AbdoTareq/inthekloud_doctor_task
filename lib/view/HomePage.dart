import 'package:flutter/material.dart';
import 'package:flutter_template/view/widgets/cust_app_bar.dart';
import 'package:flutter_template/view/widgets/search_field.dart';

import 'widgets/bottm_nav_bar.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(title: 'All Accounts', subTitle: 'null'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchField(),
          SizedBox(
            height: 20,
          ),
          SizedBox(child: Image.asset('assets/images/logo.png')),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
