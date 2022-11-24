import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:attendance_app/widgets/TextFieldC.dart';
import 'package:attendance_app/widgets/button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (() {
          Navigator.pop(context);
          
        }),),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
          
         const  Padding(
            padding:  EdgeInsets.only(top: 60),
            child: Text(
              'SIGN UP HERE',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
          ),
         const  Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom:28.0),
            child: Image.asset(
              'assets/qr code.png',
              width: 130,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormFieldC(
              hintText: 'Enter Your email',
              icon: const Icon(Icons.email),
              inputType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormFieldC(
              hintText: 'create password',
              isPassword: isPassword,
              icon: IconButton(
                  onPressed: (() {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  }),
                  icon: isPassword
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormFieldC(
              hintText: 'Re-type password',
              isPassword: isPassword,
              icon: IconButton(
                  onPressed: (() {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  }),
                  icon: isPassword
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)),
            ),
          ),
         // const Text('Forget Password'),
          const Spacer(),
          ButtonB(
            title: 'SIGN UP',
            onPress: () {},
          ),
          Spacer(),
         
        ]),
      )),
    );
  }
}
