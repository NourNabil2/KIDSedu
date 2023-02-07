import 'package:flutter/material.dart';
import 'package:kideo/sound.dart';
import 'classes.dart';
main(){
  runApp(MaterialApp(
    home:Alpha(),
  ));
}


class Alpha extends StatelessWidget {

  Sound player = Sound();
  List<lEtters> alpha = [
    lEtters(img:"images/أ.png"),
    lEtters(img:"images/ب.png"),
    lEtters(img:"images/ت.png"),
    lEtters(img:"images/ث.png"),
    lEtters(img:"images/ج.png"),
    lEtters(img:"images/ح.png"),
    lEtters(img:"images/خ.png"),
    lEtters(img:"images/د.png"),
    lEtters(img:"images/ذ.png"),
    lEtters(img:"images/ر.png"),
    lEtters(img:"images/ز.png"),
    lEtters(img:"images/س.png"),
    lEtters(img:"images/ش.png"),
    lEtters(img:"images/ص.png"),
    lEtters(img:"images/ض.png"),
    lEtters(img:"images/ط.png"),
    lEtters(img:"images/ظ.png"),
    lEtters(img:"images/ع.png"),
    lEtters(img:"images/غ.png"),
    lEtters(img:"images/ف.png"),
    lEtters(img:"images/ق.png"),
    lEtters(img:"images/ك.png"),
    lEtters(img:"images/ل.png"),
    lEtters(img:"images/م.png"),
    lEtters(img:"images/ن.png"),
    lEtters(img:"images/و.png"),
    lEtters(img:"images/ه.png"),
    lEtters(img:"images/ي.png"),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALPHAPET'),
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
                CircleAvatar( backgroundImage: AssetImage( ('images/أبت.png'),),
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
          children: List.generate(28, (index) => MaterialButton(
            onPressed: (){
              player.player3(index);
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
                        image: AssetImage((alpha[index].img))
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