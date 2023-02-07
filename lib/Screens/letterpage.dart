import 'package:flutter/material.dart';
import 'package:kideo/sound.dart';

import 'classes.dart';
main(){
  runApp(MaterialApp(
    home:Letters(),
  ));
}


class Letters extends StatelessWidget {
  Sound play = Sound();
  // List<lEtters> sound = [
  //   lEtters(num: 2),
  //     lEtters(num: 3),
  //     lEtters(num: 4),
  //     lEtters(num: 5),
  //     lEtters(num: 6),
  //     lEtters(num: 7),
  //     lEtters(num: 8),
  //     lEtters(num: 9),
  //     lEtters(num: 10),
  //     lEtters(num: 11),
  //     lEtters(num: 12),
  //     lEtters(num: 13),
  //     lEtters(num: 14),
  //     lEtters(num: 15),
  //     lEtters(num: 16),
  //     lEtters(num: 17),
  //     lEtters(num: 18),
  //     lEtters(num: 19),
  //     lEtters(num: 20),
  //     lEtters(num: 21),
  //     lEtters(num: 22),
  //     lEtters(num: 23),
  // lEtters(num: 24),
  // lEtters(num: 25),
  // lEtters(num: 26),
  // lEtters(num: 27),
  //
  //
  // ];
  List<lEtters> letters = [
    lEtters(img:"images/A..png"),
    lEtters(img:"images/B.png"),
    lEtters(img:"images/C.png"),
    lEtters(img:"images/D.png"),
    lEtters(img:"images/E (1).png"),
    lEtters(img:"images/F.png"),
    lEtters(img:"images/G.png"),
    lEtters(img:"images/H.png"),
    lEtters(img:"images/I.png"),
    lEtters(img:"images/J.png"),
    lEtters(img:"images/K.png"),
    lEtters(img:"images/L.png"),
    lEtters(img:"images/M.png"),
    lEtters(img:"images/N.png"),
    lEtters(img:"images/O.png"),
    lEtters(img:"images/P.png"),
    lEtters(img:"images/Q.png"),
    lEtters(img:"images/R.png"),
    lEtters(img:"images/S.png"),
    lEtters(img:"images/T.png"),
    lEtters(img:"images/U.png"),
    lEtters(img:"images/V.png"),
    lEtters(img:"images/W.png"),
    lEtters(img:"images/X.png"),
    lEtters(img:"images/Y.png"),
    lEtters(img:"images/Z.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LETTERS'),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            color: Colors.blue,
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                  icon: Icon(Icons.arrow_back,color: Colors.white,),
                ),
                SizedBox(width: 7,),
                CircleAvatar( backgroundImage: AssetImage( ('images/Let.png'),),
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
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(26, (index) => MaterialButton(
            onPressed: (){

              play.player(index);

            },

            child: Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.blue[100],
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
                        image: AssetImage((letters[index].img))
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
/*child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(int i=0;i<letters.length;i++)
                  Column(
                      children:[
                        Padding(padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 60,
                            width: 30,
                            decoration: new BoxDecoration(
                              color: Colors.grey,
                              borderRadius:BorderRadius.circular(14.0),
                            ),

                            child: Row(
                              children: [
                                Padding(padding: const EdgeInsets.all(6.0)),
                                CircleAvatar( backgroundImage: AssetImage( (letters[i].img),),
                                  radius: 50,
                                ),
                                SizedBox(width: 20,),
                                Container(

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: const EdgeInsets.all(6.0)),
                                      Text(letters[i].name,),
                                    ],

                                  ),
                                ),
                              ],
                            ),
                          ),),
                        Divider(color: Colors.blue,thickness: 2,)
                      ] ),
            ])*/