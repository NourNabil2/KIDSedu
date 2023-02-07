import 'package:flutter/material.dart';
import 'package:kideo/sound.dart';
import 'classes.dart';
main(){
  runApp(MaterialApp(
    home:Numbers(),
  ));
}


class Numbers extends StatelessWidget {
  Sound player = Sound();

  List<lEtters> nums = [
    lEtters(img:"images/1.png"),
    lEtters(img:"images/2.png"),
    lEtters(img:"images/3.png"),
    lEtters(img:"images/4.png"),
    lEtters(img:"images/5.png"),
    lEtters(img:"images/6.png"),
    lEtters(img:"images/7.png"),
    lEtters(img:"images/8.png"),
    lEtters(img:"images/9.png"),
    lEtters(img:"images/10.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('NUMBERS'),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            color: Colors.deepPurple,
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                  icon: Icon(Icons.arrow_back,color: Colors.white,),
                ),
                SizedBox(width: 7,),
                CircleAvatar( backgroundImage: AssetImage( ('images/123.png'),),
                  backgroundColor: Colors.white,
                  radius: 50,
                ),
                SizedBox(width: 15,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ],
                )),

              ],
            ),

          ),

        ),

      ),

      body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) => MaterialButton(
                onPressed: (){
                     player.player2(index);
                },

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(12.0),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.purple[100],
                        blurRadius: 3,
                        spreadRadius: 4,
                      )
                    ],
                  ),

                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),

                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage((nums[index].img))
                          ),
                        ),
                      ),
                      color: Colors.white,
                    ),

                ),
              )),
            ),
        ),

      );

  }
}