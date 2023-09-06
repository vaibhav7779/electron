import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.width,
    this.color1,
    this.color2,
    this.textcolor,
    this.title = 'Custom Container Title',
    this.subtitle = ' Custom Container subtitle',
    this.subtitlecolor,
    this.padding,
  }) : super(key: key);

  final double? width;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textcolor;
  final String subtitle;
  final Color? subtitlecolor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(colors: [
            color1 ?? Color(0XFFCB1841),
            color2 ?? Color(0xFF2604DE)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 12, offset: Offset(0, 6))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '$title',
              style: TextStyle(
                  color: textcolor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '$subtitle',
              style: TextStyle(
                  color: subtitlecolor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
