import 'package:flutter/material.dart';

Future addEvent(context) {
  return showDialog(
      context: context,
      builder: (builder) => AlertDialog(
            content: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
          ));
}
