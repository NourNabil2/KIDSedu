
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title:Text('About us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,),),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Text('This program is to teach children letters and numbers in an easy way and by pressing the button where the sound events the child will learn then to make the sound of the letter or number and then the child will memorize it and pronounce it in a way that is more easy and flexible for him as it is a way to have fun also but through education',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,),
    ),
        SizedBox(
          width: 250.0,
          height: 20.0,
          child: Divider(
            color: Colors.deepPurpleAccent,
          ),
        ),
        Text('There is also a program of questions to make sure if the child understood the lesson or not, by clicking on the questions icon, and then he will ask the child and when he chooses the correct answer, he will be applauded, and this is briefly the details of the program',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,),

        ),
        SizedBox(
          width: 250.0,
          height: 20.0,
          child: Divider(
            color: Colors.deepPurpleAccent,
          ),
        ),
        Text('You can also talk to us when you find a problem or difficulty in using the application through use email',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,),
        ),
          SizedBox(
            width: 250.0,
            height: 20.0,
            child: Divider(
              color: Colors.deepPurpleAccent,
            ),
          ),
     ],
    ),
      ),


    );
  }
}
