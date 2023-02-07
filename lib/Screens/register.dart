import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Log.dart';
import 'button.dart';


class Register extends StatelessWidget {

  TextEditingController fname=TextEditingController();
  TextEditingController lname=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController confirmpass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/Regist.png',height: 300,),

            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                controller: fname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  labelText: 'First Name',
                  hintText: 'Enter your First Name',
                  prefixIcon: Icon(Icons.text_format_rounded),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                controller: lname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  labelText: 'Last Name',
                  hintText: 'Enter your Last Name',
                  prefixIcon: Icon(Icons.text_format_rounded),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    labelText: 'Email',
                    hintText: 'Enter your mail',
                    prefixIcon: Icon(Icons.alternate_email),
                    suffixIcon: Icon(Icons.email)
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                controller: confirmpass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    labelText: 'Confirm Password',
                    hintText: 'Enter your password again',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon:
                      Icon(Icons.remove_red_eye_outlined),
                    )
                ),
              ),

            MaterialButton(
              minWidth: 200,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.deepPurple,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.app_registration, color: Colors.white),
                  SizedBox(width: 10,),
                  Text('Register'),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Aleady have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(' Login')),
                ]
            )
            ,
          ],

        ),
      ),

    );
  }

  }