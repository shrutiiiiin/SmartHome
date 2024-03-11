import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartDeviceBox extends StatelessWidget {
  final String deviceName;
  final String iconPath;
  final bool powerOn;
 const SmartDeviceBox({super.key, required this.deviceName, required this.iconPath, required this.powerOn});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white38, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(iconPath, height: 50),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(deviceName, style: GoogleFonts.poppins(fontSize: 14, fontWeight : FontWeight.w500),),
                ),
              ),
              CupertinoSwitch(value: false, onChanged: (value){
              })
            ],
          ),


        ],
        
      ),

    );
  }
}
