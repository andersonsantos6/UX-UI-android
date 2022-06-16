import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    return GestureDetector(
      onTapDown: (_) {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "${dateTime.hour}:" +
                      (dateTime.minute < 10
                          ? "0${dateTime.minute}"
                          : "${dateTime.minute}"),
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.phone,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.message,
                  size: 18,
                ),
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.vibration,
                  size: 18,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.wifi, size: 18),
                Icon(Icons.perm_data_setting, size: 18),
                Icon(Icons.battery_std_rounded, size: 18),
              ],
            ),
          ],
        ),
        height: 30,
      ),
    );
  }
}
