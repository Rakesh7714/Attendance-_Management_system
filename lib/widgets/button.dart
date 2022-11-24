import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ButtonB extends StatelessWidget {
   String? title;
  bool? isLoginButton;
  VoidCallback? onPress;
  bool? isLoading;
  
  ButtonB(
      {super.key,
      this.title,
      
      //this.isLoginButton = false,
      this.onPress,
      //this.isLoading = false
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
            color: Colors.blue,
            
            
          ),
          child: Center(child: Text(title!)),
          
        ),
      ),
    );
  }
}