import 'package:flutter/material.dart';
import 'package:flutter_template/view/widgets/text_icon.dart';

import 'bordered_icon_button.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
                          ),
                          radius: 30,
                        ),
                        title: Text(
                          'Abdo Tareq',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Flutter developer'),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.place,
                                ),
                                Text('86 KM away'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextIcon(
                          text: 'Card View',
                          icon: Icons.video_call,
                        ),
                      ),
                    ),
                    BorderedIconButton(
                      icon: Icons.calendar_today,
                    ),
                    BorderedIconButton(
                      icon: Icons.message,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.star,
                ),
                Text('4.7'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
