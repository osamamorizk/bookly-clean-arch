import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CustomButton(
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            text: '19.99€',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          CustomButton(
            backgroundColor: Color(0xffEF8262),
            textcolor: Colors.white,
            fontSize: 14,
            text: 'Free preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
