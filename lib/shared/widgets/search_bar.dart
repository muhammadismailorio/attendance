import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/resources/colors.dart';

class SearchBar extends StatefulWidget {
  final String hintText;
  final Function onChange;
  final TextInputType keyboardType;
  final int length;
  final bool autofocus;
  final bool textCenter;
  final TextEditingController? controller;

  const SearchBar(
      {super.key,
      this.hintText = 'Enter CN Number',
      this.keyboardType = TextInputType.text,
      this.length = 0,
      this.textCenter = false,
      this.autofocus = false,
      required this.onChange,
      this.controller});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool show = true;
  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Colors.transparent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      enabled: true,
      autofocus: widget.autofocus,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (String value) => widget.onChange(value),
      keyboardType: widget.keyboardType,
      textAlign: widget.textCenter ? TextAlign.center : TextAlign.start,
      decoration: InputDecoration(
          filled: true,
          fillColor: kTextFieldColor,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF828282),
          ),
          border: border,
          enabledBorder: border,
          disabledBorder: border,
          focusedBorder: border,
          suffixIcon: IconButton(
              icon: const Icon(
                Icons.search,
                color: Color(0xFF828282),
              ),
              onPressed: () {})),
    );
  }
}
