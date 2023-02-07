import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ContuctUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title:Text('Contact us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,),),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10.0),
        child:SingleChildScrollView(
          child: Column(
            children:[
              CircleAvatar(
                radius: 50.0,
                child: Icon(Icons.account_circle_rounded),
              ),
              Text('Nour Nabil',
                style:TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Card( margin: EdgeInsetsDirectional.all(20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.deepPurple,
                  ),
                  title: Text('Nour60g@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color:Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 20.0,
                child: Divider(
                  color: Colors.deepPurpleAccent,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                child: Icon(Icons.account_circle_rounded),
              ),



            ],

          ),
        ) ,



      ),
    );
  }
}
