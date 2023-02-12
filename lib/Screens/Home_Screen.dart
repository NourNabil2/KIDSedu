import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kideo/Screens/quiz.dart';

import 'Log.dart';
import 'alphapet.dart';
import 'classQuiz/contact us.dart';
import 'classQuiz/sitting.dart';
import 'letterpage.dart';
import 'numspage.dart';


class Home extends StatefulWidget {
  Home({this.email});

final email;
  // const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState( email: email);
}

class _HomeState extends State<Home> {
  void initState()
  {
    super.initState();

    setState(() {
      email;


    });
  }
  _HomeState({ this.email}){}
String email='';
  Future<void> player(int n)  async {
    final player = AudioPlayer();
    await player.play(
        AssetSource('note$n.wav')
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Hero(
            tag: 'logo',
            child: Image.asset('images/Logo.png', width: 100, )),
        backgroundColor: Colors.white60,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return IconButton(onPressed: () => Scaffold.of(context).openDrawer() , icon: Icon(Icons.menu_sharp , color: Colors.purple,) );

        },),
      ),
      drawer: Drawer(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

             DrawerHeader(
              decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage('images/background.png'))
              ),
              child:
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0),
                ),
                currentAccountPictureSize: Size(50, 50 ),
                currentAccountPicture: CircleAvatar(backgroundImage:AssetImage('images/kid.jpg'), ),
                accountEmail: Text('$email' ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold)),
                accountName: Text('${email.split('@')[0]}',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),

            ListTile(
              hoverColor: Colors.lightBlueAccent[100],
              title: const Text('About'),
              iconColor: Colors.purple,
              leading: Icon(Icons.contact_support_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),));

              },
            ),
            ListTile(
    hoverColor: Colors.lightBlueAccent[100],
              title: const Text('contact us'),
              iconColor: Colors.purple,
              leading: Icon(Icons.account_box_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContuctUs(),));
              },
            ),

            ListTile(
    hoverColor: Colors.lightBlueAccent[100],
              title: const Text('Log out'),
              iconColor: Colors.purple,
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Loginscreen(),), (route) => true);
              },
            ),
          ],
        ),

      ),
      body: Padding(

        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        color: Colors.blue[100],
                        width: 100,
                        height: 240,
                        child: MaterialButton(
                          height: 220,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Colors.blue[100],
                          child: Image(image: AssetImage('images/abc.png'), ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Letters(),));
                          } , ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Expanded(
                    child: Card(
                      child: Container(
                        color: Colors.purple[100],
                        width: 100,
                        height: 240,
                        child: MaterialButton(
                          height: 220,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Colors.purple[100],
                          child: Image(image: AssetImage('images/123.png'), ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Numbers(),));
                          } , ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        color: Colors.orange[100],
                        width: 100,
                        height: 240,
                        child: MaterialButton(
                          height: 220,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Colors.orange[100],
                          child: Image(image: AssetImage('images/ar.png'), ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Alpha(),));
                          } , ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Expanded(
                    child: Card(
                      child: Container(
                        color: Colors.green[100],
                        width: 100,
                        height: 240,
                        child: MaterialButton(
                          height: 220,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Colors.green[100],
                          child: Image(image: AssetImage('images/Qish.png'), ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(),));
                          } , ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ]
        ),
      ),

    );
  }
}
