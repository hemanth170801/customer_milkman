import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Size get screenSize => MediaQuery.of(this).size;

  double get h => screenSize.height;

  double get w => screenSize.width;

  void unfocus() => FocusScope.of(this).unfocus();

  void showErrorDialog(
      {String errorMsg = 'Sorry something went wrong, Please try again!'}) {
    showAlertDialog(
      title: 'Error!',
      bodyText: errorMsg,
      isSingleAction: true,
      pButtonText: 'OK',
    );
  }

  void showAlertDialog(
      {bool isSingleAction = false,
        String title = 'title',
        String bodyText = 'bodyText',
        String pButtonText = 'YES',
        String nButtonText = 'NO',
        Function? pButtonBlock,
        Function? nButtonBlock}) {
    // set up the buttons
    Widget cancelButton = TextButton(
      style: TextButton.styleFrom(foregroundColor: colorScheme.primary),
      child: Text(nButtonText),
      onPressed: () {
        Navigator.of(this).pop();
        if (nButtonBlock != null) {
          nButtonBlock();
        }
      },
    );
    Widget continueButton = TextButton(
      style: TextButton.styleFrom(foregroundColor: colorScheme.primary),
      child: Text(pButtonText),
      onPressed: () {
        Navigator.of(this).pop();
        if (pButtonBlock != null) {
          pButtonBlock();
        }
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        title,
      ),
      content: WillPopScope(
          child: Text(
            bodyText,
          ),
          onWillPop: () async => false),
      actions: isSingleAction
          ? [
        continueButton,
      ]
          : [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: this,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void showLoadingDialog(Future<bool> dismissFuture) {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: WillPopScope(
            onWillPop: () async => false,
            child: SizedBox(
              width: context.w * 0.6,
              height: context.w * 0.1,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text("Loading"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    dismissFuture.then((value) {
      Navigator.of(this).pop();
    });
  }
}
