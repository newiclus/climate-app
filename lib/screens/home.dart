import 'package:climate_app/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                color: kOrangeColor,
                border: Border(bottom: BorderSide(width: 0.0, color: Colors.white)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        width: 30.0,
                        image: AssetImage('assets/images/pin.png'),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        children: <Widget>[
                          Text(
                            'LIMA',
                            style: TextStyle(
                              color: Color(0xffe6e7e8),
                              fontSize: 30.0
                            ),
                          ),
                          Text(
                            '29/06/2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              letterSpacing: 1.0
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    width: 300.0,
                    alignment: Alignment.center,
                    child: Image(
                      width: 200.0,
                      image: AssetImage('assets/images/Icon_most_sunny.png')
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Image(
                    image: AssetImage('assets/images/waves_white.png'),
                  ),
                ],
              )
            )
          ),
          
          Expanded(
            flex: 1,
            child: Container(
              child: Text('Sept')
            )
          ),
        
        ],
      ),
    );
    

  }
}