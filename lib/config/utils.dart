import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class Utils{
  static showMessage(String message, BuildContext context){
    showToast(
      message,
      context: context,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.center,
      animDuration: Duration(seconds: 1),
      duration: Duration(seconds: 2),
      curve: Curves.elasticOut,
    );

  }
  static showAlertYesNo({
    required String title,
    required String content,
    required VoidCallback onPressYes,
    required VoidCallback onPressNo,
    required BuildContext context,
}) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext){
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            //tombol yes
            TextButton(
              onPressed: onPressYes,
              child: Text('yes'),
            ),
            //tombol no
            TextButton(
              onPressed: onPressNo,
              child: Text('no'),
            ),
          ]
        );
      }
    );
  }
}