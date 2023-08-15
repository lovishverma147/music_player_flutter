import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class InputBuilder extends StatefulWidget {

  final String text;
  final bool password;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const InputBuilder(this.text, {super.key, this.password = false, this.suffixIcon, this.prefixIcon});

  @override
  InputBuilderState createState() => InputBuilderState();
}

class InputBuilderState extends State<InputBuilder> {

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.password ? !visibility : false,
      style: const TextStyle(
          fontWeight: FontWeight.w700,
          color: kSecondaryColor
      ),
      decoration: InputDecoration(
          hintText: widget.text,
          hintStyle: const TextStyle(
              color: kSecondaryColor
          ),
          suffixIcon: widget.password ? GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => setState(() => visibility = !visibility),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(visibility ? Icons.visibility : Icons.visibility_off, color: kSecondaryColor),
            ),
          ) : widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: kGrey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: kGrey, width: 2),
          )
      ),
    );
  }
}
