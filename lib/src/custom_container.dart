import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    Key? key,
    this.width,
    this.color1,
    this.color2,
    this.textcolor,
    this.title = 'title',
    this.subtitle = 'subtitle',
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
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? Color(0XFFCB1841),
            widget.color2 ?? Color(0xFF2604DE)
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
              '${widget.title}',
              style: TextStyle(
                  color: widget.textcolor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '${widget.subtitle}',
              style: TextStyle(
                  color: widget.subtitlecolor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
