import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartDeviceBox extends StatelessWidget {
  final String deviceName;
  final String iconPath;
  final bool powerOn;
 const SmartDeviceBox({super.key, required this.deviceName, required this.iconPath, required this.powerOn});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(iconPath, height: 60),
          SizedBox(height: 10,),
          Text(deviceName, style: GoogleFonts.roboto(fontSize: 20),),

        ],
        
      ),

    );
  }
}
