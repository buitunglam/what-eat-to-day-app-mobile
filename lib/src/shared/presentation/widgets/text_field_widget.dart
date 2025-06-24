import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String? hintText;
  final Function(String)? onChanged;
  final bool isPasswordField;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.onChanged,
    this.isPasswordField = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: TextStyle(color: AppColors.color121212)),
        SizedBox(height: 10),
        TextField(
          onChanged: widget.onChanged,
          obscureText: 
              widget.isPasswordField ? _isPasswordVisible : false,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.colorD9D9D9,
                width: 1,
              ), // Border before focus
            ),
            hintText: widget.hintText,
            suffixIcon:
                widget.label == 'Password'
                    ? IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColors.colorD9D9D9,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                    : null,
            hintStyle: TextStyle(color: AppColors.colorD9D9D9),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.colorD9D9D9, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
