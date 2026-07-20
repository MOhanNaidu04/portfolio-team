import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {

  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(

      onEnter: (_) => setState(() => hover = true),

      onExit: (_) => setState(() => hover = false),

      cursor: SystemMouseCursors.click,

      child: AnimatedContainer(

        duration: const Duration(milliseconds: 250),

        child: ElevatedButton(

          style: ElevatedButton.styleFrom(

            elevation: hover ? 10 : 2,

            backgroundColor:
                hover ? Colors.blueGrey.shade900 : Colors.black,

            foregroundColor: Colors.white,

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