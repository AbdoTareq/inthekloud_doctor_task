import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustAppBar({
    Key key,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.sort,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.place,
              ),
              onPressed: () {},
            )
          ],
          title: Row(
            children: [
              SizedBox(
                  height: 25,
                  child: Text(
                    title.tr,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
