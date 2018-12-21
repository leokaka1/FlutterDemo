import 'package:flutter/material.dart';

class CustomerRichText extends StatefulWidget {
  final String richTitle;
  final String normalTitle;
  final Color richTextColor;
  final Color normalTextColor;
  final FontWeight richFontWeight;
  final FontWeight normalFontWeight;
  final double richFontSize;
  final double normalFontSize;

  CustomerRichText({
    this.richTitle,
    this.normalTitle,
    this.richFontSize,
    this.normalFontSize,
    this.richTextColor,
    this.normalTextColor,
    this.normalFontWeight,
    this.richFontWeight
  });
  @override
  State<StatefulWidget> createState() {
    return CustomerRichTextState();
  }
}

class CustomerRichTextState extends State<CustomerRichText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: widget.richTitle,
          style: TextStyle(
              fontSize: widget.richFontSize,
              fontWeight: widget.richFontWeight,
              color: widget.richTextColor),
          children: [
            TextSpan(
                text: widget.normalTitle,
                style: TextStyle(
                    color: widget.normalTextColor,
                    fontWeight: widget.normalFontWeight))
          ]),
    );
  }
}
