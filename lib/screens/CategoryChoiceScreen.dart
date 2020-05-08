import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizx/screens/TestScreen.dart';
import 'package:quizx/util/constants.dart';
import 'package:quizx/widgets/ContainerRadius.dart';
import 'package:quizx/widgets/CategoryTile.dart';
import 'package:quizx/networking/CategoryService.dart';
import 'package:quizx/model/Categories.dart';

class CategoryChoiceScreen extends StatefulWidget {
  @override
  _CategoryChoiceScreenState createState() => _CategoryChoiceScreenState();
  final CategoryService httpService = new CategoryService();
}

class _CategoryChoiceScreenState extends State<CategoryChoiceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF202737),
      backgroundColor: Color(0xFF202125),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            // Holds the title and all the heading
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              // color: kMainColor,
              child: Column(
                children: <Widget>[
                  Text(
                    'Quizx',
                    style: TextStyle(
                      color: kGreyLight,
                      fontSize: 40,
                    ),
                  ),
                  Hero(
                    tag: 'logo',
                    child: Icon(
                      FontAwesomeIcons.solidQuestionCircle,
                      color: kGreyLight,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // background: kMainColor,
                    child: Text(
                      'Build your brain muscles',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: kBlueColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
//                  ContainerRadius(
//                    background: kWhite,
//                    child: Text(
//                      'Pick a category to test your brain',
//                      style: TextStyle(
//                        fontSize: 12,
//                        fontWeight: FontWeight.w600,
//                        color: kDarkColor,
//                      ),
//                    ),
//                  ),
                  Icon(
                    FontAwesomeIcons.chevronDown,
                    color: kGreyLight,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: kBlueColor,
                    child: Text(
                      'There are 2 quizzes',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: kWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Holds the list of Quizzes
            Container(
              height: MediaQuery.of(context).size.height / 2,

//              children: <Widget>[
              child: FutureBuilder(
                future: widget.httpService.getData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Categories>> snapshot) {
                  if (snapshot.hasData) {
                    List<Categories> categories = snapshot.data;
                    return ListView(
                      children: categories
                          .map((Categories categories) => CategoryTile(
                                title: categories.categoryName.toString(),
                                description: categories.categoryDesc,
                                numberOfQuestions:
                                    int.parse(categories.numberOfQuestions),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestScreen(
                                          categoryTitle:
                                              categories.categoryName,
                                          categoryDesc: categories.categoryDesc,
                                          categoryId: categories.categoryId,
                                        ),
                                      ));
                                },

//                                numberOfQuestions:
//                                    categories.getNumberOfQuestions(),
                              ))
                          .toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
