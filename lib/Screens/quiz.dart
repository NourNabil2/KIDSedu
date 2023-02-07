import 'package:flutter/material.dart';
import 'package:kideo/sound.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:audioplayers/audioplayers.dart';

import 'classQuiz/quizbrain.dart';

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


 Sound play =Sound();
  List<Icon> cheak = [];
  quizbrain QuizBrain =quizbrain();



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                QuizBrain.getquestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {

                if (QuizBrain.questionNum<QuizBrain.question.length-1) {
                  bool cheakanswer = QuizBrain.getAnswer();
                  if (cheakanswer == true) {
                    cheak.add(Icon(Icons.check, color: Colors.green,));
                    QuizBrain.qtrue++;
                    play.player(100);
                  }
                  else if (cheakanswer == false) {
                    cheak.add(Icon(Icons.close, color: Colors.red,));
                    QuizBrain.qfalse++;
                    // play.player(2);
                  }
                  setState(() {
                    QuizBrain.nextQuestion();
                  });

                }

                else{
                  bool cheakanswer = QuizBrain.getAnswer();
                  if (cheakanswer == true) {
                    cheak.add(Icon(Icons.check, color: Colors.green,));
                    QuizBrain.qtrue++;
                  }
                  else if (cheakanswer == false) {
                    cheak.add(Icon(Icons.close, color: Colors.red,));
                    QuizBrain.qfalse++;
                  }
                  setState(() {
                    QuizBrain.nextQuestion();
                  });

                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "End of Question",
                    desc: ' worng answer : ${QuizBrain.qfalse} \n  '
                        ' right answer : ${QuizBrain.qtrue}   ',
                    buttons: [
                      DialogButton(

                        child:
                        Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                  setState(() {
                    QuizBrain.reset();
                    cheak = [];
                  });


                }
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
              color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                if (QuizBrain.questionNum<QuizBrain.question.length-1) {
                  bool cheakanswer = QuizBrain.getAnswer();
                  if (cheakanswer == false) {
                    cheak.add(Icon(Icons.check, color: Colors.green,));
                    QuizBrain.qtrue++;
                    play.player(100);
                  }
                  else if (cheakanswer == true) {
                    cheak.add(Icon(Icons.close, color: Colors.red,));
                    QuizBrain.qfalse++;
                    // play.player(2);
                  }

                  setState(() {
                    QuizBrain.nextQuestion();
                  });
                }
                else
                {
                  bool cheakanswer = QuizBrain.getAnswer();
                  if (cheakanswer == false) {
                    cheak.add(Icon(Icons.check, color: Colors.green,));
                    QuizBrain.qtrue++;
                  }
                  else if (cheakanswer == true) {
                    cheak.add(Icon(Icons.close, color: Colors.red,));
                    QuizBrain.qfalse++;
                  }

                  setState(() {
                    QuizBrain.nextQuestion();
                  });

                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "End of Question",
                    desc: ' worng answer : ${QuizBrain.qfalse} \n  '
                        ' right answer : ${QuizBrain.qtrue}   ',
                    buttons: [
                      DialogButton(

                        child:
                        Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();

                  setState(() {
                    QuizBrain.reset();
                    cheak = [];
                  });

                }

              },
            ),
          ),
        ),
        Row(
            children: cheak
        )
      ],
    );
  }
}
