import 'package:flutter/material.dart';
import 'package:flutter_template/view/widgets/cust_app_bar.dart';
import 'package:flutter_template/view/widgets/search_field.dart';
import 'package:flutter_template/view/widgets/text_icon.dart';
import 'package:flutter_template/view/widgets/user_widget.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctor list',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextIcon(
                  text: 'Card View',
                  icon: Icons.indeterminate_check_box,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return UserWidget();
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
