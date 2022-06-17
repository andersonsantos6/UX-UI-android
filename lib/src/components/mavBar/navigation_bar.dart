import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).canPop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
