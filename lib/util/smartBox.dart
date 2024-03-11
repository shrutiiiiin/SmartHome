import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  final String deviceName;
  final String iconPath;
  final bool powerOn;
 SmartDeviceBox({super.key, required this.deviceName, required this.iconPath, required this.powerOn});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(iconPath, height: 65),
        ],
        
      ),

    );
  }
}
