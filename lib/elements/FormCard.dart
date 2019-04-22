import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins-Bold',
                  letterSpacing: 0.6,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Heroname',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: 20,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Heroname',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 10.0,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: 20,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 10.0,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'New Password ?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Poppins-Medium',
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
