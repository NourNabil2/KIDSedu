import 'package:kideo/Screens/classQuiz/question%20class.dart';
class quizbrain {
  int questionNum=0;
  int qtrue =0;
  int qfalse =0;
  List<questionclass> question=[
    questionclass( '1+5=6?' ,  true),
    questionclass(  "5*5=10",  false),
    questionclass( '21+12=63', false),
    questionclass( 'The color of the apple is red ?' ,  true),
    questionclass( 'Is the statement correct? (1,2,3,4,5,7,6,8,9)' , false),
  ];

  String getquestion()
  {
      return question[questionNum].q.toString();
  }
bool getAnswer  ()
{
  return question[questionNum].a;
}
void nextQuestion ()
{
  if (questionNum < question.length - 1)
    {
      questionNum++;
    }

}

  void reset() {
    questionNum = 0;
    qfalse=0;
    qtrue=0;
  }
}