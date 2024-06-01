import 'package:flutter/material.dart';

class CheckboxWithText extends StatefulWidget {
  final String text;
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  CheckboxWithText({
    required this.text,
    this.initialValue = false,
    this.onChanged,
  });

  @override
  _CheckboxWithTextState createState() => _CheckboxWithTextState();
}

class _CheckboxWithTextState extends State<CheckboxWithText> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
              widget.onChanged?.call(isChecked);
            });
          },
        ),
        Text(widget.text),
      ],
    );
  }
}
