import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/networking/categoryService.dart';
import 'package:quizx/screens/CategoryChoiceScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStuff();
  }

  void getStuff() async {
    CategoryService networking = new CategoryService();

    var data = await networking.getData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryChoiceScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kMainColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Icon(
                FontAwesomeIcons.solidQuestionCircle,
                color: kWhite,
                size: 70,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
//              width: 30,
//              height: 25,
              child: Center(
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(kWhite),
                  backgroundColor: kBlueColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
