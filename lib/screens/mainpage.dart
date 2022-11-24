import 'package:flutter/material.dart';
class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return 
        ClipPath(
  clipper: CustomShape(), // this is my own class which extendsCustomClipper
  child: Container(
  height: 150,
  color:Colors.red,
  ),
);
    
  }
}
class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 4, height-180, width , height - 180);
    path.lineTo(width, 0);
    path.close();
    
    return path;
 }

  @override
    bool shouldReclip(CustomClipper oldClipper) {
    return true;
 }
}