import 'package:flutter/material.dart';

import '../bag.dart';
import '../usage.dart';

class CustomAppBar extends AppBar {
  final int _buttonIndex;
  final int selectedIndex;
  final BuildContext context;

  CustomAppBar(this._buttonIndex, this.selectedIndex, this.context)
      : super(
    leading: _buttonIndex == 1
        ? null
        : IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 40,
        color: Colors.white,
      ),
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    actions: [
      if (_buttonIndex != 1 && _buttonIndex != 2 && selectedIndex != 1)
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bag(selectedProducts: [])),
            );
          },
          icon: Container(
            width: 42,
            height: 42,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/list.png',
                  width: 42,
                  height: 42,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFB41212),
                    ),
                    child: Center(
                      child: Text(
                        '0',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      if (selectedIndex != 1 ) // Updated condition here
        IconButton(
          onPressed: () {
            if (selectedIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Usage()),
              );
            } else {
              // Handle other cases based on _buttonIndex value.
            }
          },
          icon: Icon(
            Icons.help_outline,
            size: 40,
            color: Colors.white,
          ),
        ),
    ],
  );
}
