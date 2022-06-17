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
        color: Colors.black.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
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
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.phone, size: 18, color: Colors.white),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.message, size: 18, color: Colors.white),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.vibration, size: 18, color: Colors.white),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.wifi, size: 18, color: Colors.white),
                  Icon(Icons.perm_data_setting, size: 18, color: Colors.white),
                  Icon(Icons.battery_std_rounded,
                      size: 18, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
        height: 30,
      ),
    );
  }
}
