import 'package:flutter/material.dart';
import 'package:flutter_course/pages/details_screen_analyst.dart';
import 'package:flutter_course/pages/details_screen_flutter.dart';
import 'package:flutter_course/pages/details_screen_kotlin.dart';
import 'package:flutter_course/pages/details_screen_web.dart';
import 'package:flutter_course/widgets/bottom_nav_bar.dart';
import 'package:flutter_course/widgets/category_card.dart';
import 'package:flutter_course/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .50,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/gradient_fix.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.menu_rounded, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Choose your path!",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Flutter Dev",
                          svgSrc: "assets/icons/flutter.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Kotlin Dev",
                          svgSrc: "assets/icons/kotlin.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreenKotlin();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Web Dev",
                          svgSrc: "assets/icons/web.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreenWeb();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Data Analyst",
                          svgSrc: "assets/icons/analyst.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreenAnalyst();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
