import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constans/app_color.dart';

class SearchField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const SearchField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextField(
        cursorHeight: 15,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.zero,
          hintText: 'Search..',
          fillColor: Colors.transparent,
          prefixIcon: Icon(CupertinoIcons.search, size: 18),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Color.fromRGBO(8, 67, 29, 0.3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}