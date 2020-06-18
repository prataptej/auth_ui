import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key key,
    this.hint = "Enter Text",
    this.obscure = false,
    this.prefixIcon,
    this.size,
  }) : super(key: key);

  final String hint;
  final bool obscure;
  final IconData prefixIcon;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width,
      child: Column(
        children: <Widget>[
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            obscureText: obscure,
            decoration: InputDecoration(
              icon: Icon(
                prefixIcon,
                color: Colors.white,
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              border: InputBorder.none,
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
