import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/util/smartbox.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  List mySmartDevices = [
    [
      'Smart Light' , 'lib/images/icons/lightOn.png', true
    ],
    [
      'Smart Fan' , 'lib/images/icons/Fan.png' , false
    ],
    [
      'Smart Ac' , 'lib/images/icons/Air Conditioner.png', true
    ],
    [
      'Smart TV' , 'lib/images/icons/TV.png', false
    ],

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEEF7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('lib/images/icons/menu.png', width: 30,height: 30),
                  Image.asset('lib/images/icons/Cat Profile.png',width: 50,height: 50),
                ],),
            ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
            'Welcome Back !',
            style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500,
            ),),
      ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text('Smart Devices', style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                  color: Colors.grey[800],
              ),),
            ),
            const SizedBox(height: 10),
            Expanded(child: GridView.builder(
              itemCount: 4,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,  childAspectRatio: 1 / 1.1,),
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: SmartDeviceBox(deviceName: mySmartDevices[index][0], iconPath: mySmartDevices[index][1], powerOn: mySmartDevices[index][2]),
                );

                })),
            
    ]
    ),
      ),
    );
  }
}