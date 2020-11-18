import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
            suffixIcon: Icon(
              Icons.search,
              color: kBackgroundColor,
            ),
            border: InputBorder.none,
            hintText: "Search by category",
            hintStyle: TextStyle(color: kBackgroundColor),
            contentPadding: const EdgeInsets.only(
              left: 16,
              right: 20,
              top: 14,
              bottom: 14,
            ),
          ),
        ),
      ),
    );
  }
}
