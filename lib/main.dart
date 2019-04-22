import 'package:flutter/material.dart';
import 'elements/FormCard.dart';
import 'elements/SocialIcons.dart';
import 'elements/CustomIcons.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSelected = false;
  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );
  Widget horizontalline() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: 50,
          height: 1.0,
          color: Colors.white,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightGreenAccent[300],
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset('assets/j.png',width: 600,height: 470,),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset(
                'assets/g.png',
                color: Colors.black54,
              )
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 40.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/l.png',
                        width: 110,
                        height: 110,
                      ),
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: 43,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  FormCard(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                          ),
                          SizedBox(
                            height: 20,
                            width: 10.0,
                          ),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Poppins-Medium',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      width: 190,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.indigo[900], Colors.red[100]],
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.indigo[400].withOpacity(0.3),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Center(
                              child: Text(
                                "Join Us",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins-Bold",
                                    fontSize: 18,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalline(),
                      Text(
                        'Social Login',
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: "Poppins-Medium"),
                      ),
                      horizontalline(),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        colors: [
                          Color(0xFF102397),
                          Color(0xFF187adf),
                          Color(0xFF00eaf8),
                        ],
                        iconData: Icons.favorite,
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
