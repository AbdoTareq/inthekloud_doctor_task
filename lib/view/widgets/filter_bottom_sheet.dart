import 'package:flutter/material.dart';
import 'package:flutter_template/view/widgets/text_icon.dart';
import 'package:get/get.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .36,
      color: Theme.of(context).cardColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  'clear',
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).primaryColorDark),
                ),
              ),
              Text(
                'Sort By',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).primaryColorDark),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FiltrOption(
                text: 'Only Doctors',
                icon: Icons.place,
                isSeleted: true,
              ),
              FiltrOption(
                text: 'Only Patients',
                icon: Icons.place,
              ),
              FiltrOption(
                text: 'All',
                icon: Icons.place,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Theme.of(context).primaryColorDark,
            child: TextIcon(
              text: 'Advanced filtering',
              icon: Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class FiltrOption extends StatelessWidget {
  const FiltrOption({
    Key key,
    @required this.text,
    @required this.icon,
    this.isSeleted = false,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool isSeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .28,
      height: Get.height * .18,
      decoration: BoxDecoration(
        border: Border.all(
            color: isSeleted
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColorLight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColorLight,
              child: IconButton(
                icon: Icon(icon, color: Theme.of(context).primaryColorDark),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).primaryColorDark),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
