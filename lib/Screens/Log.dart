import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kideo/Screens/Home_Screen.dart';
import 'package:kideo/Screens/register.dart';

import 'button.dart';
class Loginscreen extends StatefulWidget {

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  @override


  
  bool isHidden = true;
  void _togglePasswordView() {
    setState(() {
      isHidden = !isHidden;

    });
  }




  var valid = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   backgroundColor: Colors.lightBlueAccent,
      //   title:Text('Login'),
      // ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Form(
            key: valid,
            child: Column(
                children: <Widget>[
                  SizedBox(height: 150,),
                  Hero(

                    tag: 'logo',
                    child: Image.asset('images/Logo.png',
                    width:200,
                    height: 200,),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(

                    validator: (value) {
                      if (value.isEmpty)
                        return 'It must not be empty';
                      else
                        return null;
                    },
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.tealAccent,
                          width: 1.0,
                        )
                      ),
                      disabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                            width: 1.0,
                          )
                      ),
                      labelText:'Email',
                      hintText: 'Enter your e-mail',
                      prefixIcon: Icon(Icons.attach_email),
                      suffixIcon: Icon(Icons.alternate_email),
                    ),

                  ),
                  SizedBox(height: 30,),
                  TextFormField(

                    validator: (value) {
                      if (value.isEmpty)
                        return 'It must not be empty';
                      else
                        return null;
                    },
                    controller: pass,
                   obscureText: isHidden,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                            width: 1.0,
                          )
                      ),
                      disabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                            width: 1.0,
                          )
                      ),
                      labelText:'Password',
                      hintText: 'Enter your Password',
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: IconButton(onPressed: (){
                        _togglePasswordView();
                      },icon:  isHidden? Icon(CupertinoIcons.eye):Icon(CupertinoIcons.eye_slash) ,),


                    ),
                  ),
                  SizedBox(height: 30,),
                  MaterialButton(
                    elevation: 5.0,
                    minWidth: 190,
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home( email: email.text, ),));
                   /*   Navigator.of(context).push(
                          MaterialPageRoute(builder: (v){
                            return  Register();
                          })

                      );*/
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.deepPurple,width: 2)
                      );
                    },
                    color: Colors.deepPurple,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Icon(Icons.login,color: Colors.white54,),
                        SizedBox(width:50,),

                        txt1(name:'login',color: Colors.white30),

                      ],

                    ),

                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Does not have account?'),
                        TextButton(
                            onPressed: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Register())
                              );

                            },
                            child: Text(' Register'))]
                  )
                ],

              ),
          ),


        ),


      )
    );
  }
}
