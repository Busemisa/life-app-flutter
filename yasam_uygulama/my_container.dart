import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget? child;
  final void Function() onPress;
  MyContainer({this.renk = Colors.white, this.child, this.onPress = _defaultOnPress});

   static void _defaultOnPress() {
    // Varsayılan onPress işlevi burada tanımlanabilir
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: renk,
        ),
      ),
    );
  }
}
