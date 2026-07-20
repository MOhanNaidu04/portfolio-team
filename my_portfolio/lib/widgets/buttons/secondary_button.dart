import 'package:flutter/material.dart';

class SecondaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {

  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(

      onEnter: (_) => setState(() => hover = true),

      onExit: (_) => setState(() => hover = false),

      cursor: SystemMouseCursors.click,

      child: AnimatedContainer(

        duration: const Duration(milliseconds: 250),

        child: OutlinedButton(

          style: OutlinedButton.styleFrom(

            backgroundColor:
                hover ? Colors.black : Colors.transparent,

            foregroundColor:
                hover ? Colors.white : Colors.black,

            side: BorderSide(
              color: hover ? Colors.black : Colors.grey.shade400,
            ),

            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 22,
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),

          onPressed: widget.onPressed,

          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}