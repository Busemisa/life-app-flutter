import 'package:deneme2/yasam_uygulama/constants.dart';
import 'package:flutter/material.dart';

class IconCinsiyet extends StatelessWidget {
  final String? cinsiyet;
  final IconData icon;

  IconCinsiyet({this.cinsiyet,required this.icon});
  
 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet ?? "",
          style: kMetinStili,
        )
      ],
    );
  }
}

