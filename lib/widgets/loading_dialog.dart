

import 'package:yeyito/widgets/custom_pop_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  final String? text;

  const LoadingDialog({
    super.key,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return CustomPopDialog(
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),//EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  onLongPress: (){
                    counter++;
                    if(kDebugMode && counter == 3){Navigator.pop(context);}
                  },
                  child: const  CircularProgressIndicator(
                    color: Colors.blue,    //HexColor(AppTheme.primaryColorString!),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  text ?? "Procesando",
                  style: const TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
