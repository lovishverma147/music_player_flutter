
import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class ButtonBuilder extends StatelessWidget {

  final String text;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? paddingVertical;
  final TextStyle? style;
  final Color? backgroundColor;
  final Color? color;
  final Function()? onPressed;
  final IconData? icon;

  const ButtonBuilder(this.text, {super.key,
    this.borderRadius,
    this.width,
    this.paddingVertical,
    this.style,
    this.backgroundColor,
    this.color,
    this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;

    return TextButton(
      onPressed: onPressed ?? () {},
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? kPrimaryColor,
          primary: color ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(50),
          )
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: paddingVertical ?? 16),
        width: width ?? widthQuery,
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 15,
          children: [
            if(icon != null) Icon(icon, size: 16),
            Text(text,
                textAlign: TextAlign.center,
                style: style ?? const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)
            )
          ],
        )
      ),
    );
  }
}