import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  final String text;

  const FormButton({
    super.key,
    required this.disabled,
    this.text = 'Next',
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size14,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Sizes.size5,
          ),
          color:
              disabled ? Colors.grey.shade300 : Theme.of(context).primaryColor,
        ),
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          duration: const Duration(
            milliseconds: 300,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
