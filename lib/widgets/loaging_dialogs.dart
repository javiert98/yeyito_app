import 'package:flutter/material.dart';

showAlertLoadingDialog(BuildContext context, String text){

  AlertDialog alert=AlertDialog(
    content:  Row(
        children: [
           CircularProgressIndicator(),
           Container(margin: const EdgeInsets.only(left: 5),child:Text(text)),
        ],),
  );
  showDialog(barrierDismissible: false,
    context:context,
    builder:(BuildContext context){
      return alert;
    },
  );
}



showAlertDialog(BuildContext context, String text){

  AlertDialog alert=AlertDialog(
    content:  Container(
     height: 100,
     width: 100,
     margin: const EdgeInsets.only(left: 5),
     child: Center(child: Text(text))
    ),
  );
  showDialog(barrierDismissible: true,
    context:context,
    builder:(BuildContext context){
      return alert;
    },
  );
}