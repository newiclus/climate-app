import 'package:climate_app/config/route.dart';
import 'package:climate_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.home);
    });
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 254.0,
                    alignment: Alignment.centerRight,
                    child: Image(
                      width: 80.0,
                      image: AssetImage('assets/images/logo.png')
                    ),
                  ),
                  Text(
                    'CLIMATE', 
                    style: TextStyle(
                      fontSize: 46.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 10.0,
                    ),
                  ),
                  Text(
                    'LIVE WEATHER FORECAST APP',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.8,
                      wordSpacing: 3.0,
                    )
                  ),
                  SizedBox(height: 30.0,),
                  Image(
                    image: AssetImage('assets/images/waves.png')
                  )
                ],
              )
            )
          ),
          
          Expanded(
            flex: 1,
            child: Container(
              child: SpinKitRipple(
                color: kOrangeColor,
                size: 80.0,
              )
            )
          ),
        
        ],
      ),
    );
  }
}
