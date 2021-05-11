
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleText = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Tai sao lai lam duong cong", style: TextStyle(
                        fontSize: 24, color: Colors.purple,fontWeight: FontWeight.bold
                    ),),
                  ),
                  Text("Tai sao k lam duong thang ma lam duong cong nhu the nay di vua ton xang ma con nguy hiem", style: TextStyle(
                      fontSize: 18,color: Colors.grey[600]),)
                ],
              )
          ),
          Icon(Icons.favorite, color: Colors.red,),
          Text("100", style: TextStyle(fontSize: 20),)
        ],
      ),
    );
    Widget buildButton(IconData icon, String buttonTitle){
      final Color tinitColor = Colors.blue;
      return Column(
        children: <Widget>[
          Icon(icon, color: tinitColor),
          Container(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(buttonTitle, style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600,color: tinitColor
            ),),
          )
        ],
      );
    }
    Widget fourButtons = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back_rounded, "Back"),
          buildButton(Icons.arrow_forward_rounded, "Next"),
          buildButton(Icons.share_rounded, "Share")
        ],
      ),
    );
    final buttonDesition = Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),

      child: Text('''Coming from another platform? Check out Flutter for: Android, iOS, Web, React Native and Xamarin.Forms developers.

Building layouts
Learn how to create layouts in Flutter, where everything is a widget.
Understanding constraints
Once you understand that “Constraints flow down. Sizes flow up. Parents set positions”, then you are well on your way to understanding Flutter’s layout model.
Adding interactivity to your Flutter app
Learn how to add a stateful widget to your app.
A tour of the Flutter widget framework
Learn more about Flutter’s react-style framework.
FAQ
Get the answers to frequently asked questions.

      ''', style: TextStyle(fontSize: 18),),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title App"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/NGUYEN.JPG',
            fit: BoxFit.cover
            ),
            titleText,
            fourButtons,
            buttonDesition,
          ],
        )
      )
    );
  }
}