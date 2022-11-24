import 'package:attendance_app/screens/signupScreen.dart';
import 'package:attendance_app/widgets/TextFieldC.dart';
import 'package:attendance_app/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
          
         const  Padding(
            padding:  EdgeInsets.only(top: 60),
            child: Text(
              'VIRTUAL ATTENDANCE',
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
              hintText: 'Your password',
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
            title: 'LOG IN',
            onPress: () {},
          ),
          Spacer(),
          ButtonB(
            title: 'SIGN UP',
            onPress: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SignUpScreen())));
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SignUpScreen())));
              
            },
          )
        ]),
      )),
    );
  }
}
