import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget txt1({String name,double font=22,Color color=Colors.black})
{

  return Text(name,
  style: TextStyle(
     color: color,
      fontSize: font,
      fontWeight: FontWeight.bold

  ),);

}


Widget  btn1({@required String name,@required Function function,})
{
 return MaterialButton(onPressed: function,
   color: Colors.cyan,
   shape:RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(20),
         side: BorderSide(color: Colors.teal,width: 2)
   ),
      child: Text(name,
           style :TextStyle(
              color: Colors.black,
             fontSize: 27,
             fontWeight: FontWeight.bold
           ),
      ),
 );


}