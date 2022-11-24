import 'package:flutter/material.dart';

class TextFormFieldC extends StatefulWidget {
   String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validate;
  bool isPassword;
  bool? check;
  Widget? icon;
  int? maxLines;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  final TextInputType? inputType;

   TextFormFieldC({
    this.hintText,
    this.check,
    this.controller,
    this.focusNode,
    this.icon,
    this.inputAction,
    this.inputType,
    this.isPassword= false,
    this.maxLines,
    this.validate
    
   });

  @override
  State<TextFormFieldC> createState() => _TextFormFieldCState();
}

class _TextFormFieldCState extends State<TextFormFieldC> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
            child: TextFormField(
              keyboardType: widget.inputType,
              obscureText: widget.isPassword == false? false : widget.isPassword,
              focusNode: widget.focusNode,
              controller: widget.controller,
              validator: widget.validate,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: widget.icon,
                hintText: widget.hintText??'Hint Text',
                contentPadding:const  EdgeInsets.all(10)
              ),
            ),
          ),
      );
    
  }
}