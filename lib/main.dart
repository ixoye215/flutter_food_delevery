import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixoye_food_delevery_app/constants.dart';
import 'package:ixoye_food_delevery_app/details_screen.dart';
import 'package:ixoye_food_delevery_app/widgets/ctegory_title.dart';
import 'package:ixoye_food_delevery_app/widgets/food_card.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.bold),
          bodyText1: TextStyle( color: kTextColor),
        ),
      ),
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10.0),
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: size.width*0.04, top: size.height*0.08),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: size.height*0.016,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                CategoryTitle(
                  title: "All",
                  active: true,
                ),
                CategoryTitle(
                  title: "Italian",
                  active: false,
                ),
                CategoryTitle(
                  title: "Asian",
                  active: false,
                ),
                CategoryTitle(
                  title: "Chinese",
                  active: false,
                ),
                CategoryTitle(
                  title: "Burguer",
                  active: false,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor)
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                FoodCard(
                  title: "Vegetales Ensalada",
                  calories: "420Kcal",
                  description: "Ad voluptate laborum non do est ullamco eiusmod occaecat anim Lorem consectetur Lorem ea minim.",
                  image: "assets/images/image_1.png",
                  ingredient: "Tomates rojos",
                  price: 420,
                  press: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context){
                          return DetailsScreen();
                        }
                      )
                    );
                  },
                ),
                FoodCard(
                  title: "Vegetales Ensalada",
                  calories: "420Kcal",
                  description: "Ad voluptate laborum non do est ullamco eiusmod occaecat anim Lorem consectetur Lorem ea minim.",
                  image: "assets/images/image_2.png",
                  ingredient: "Tomates rojos",
                  price: 420,
                  press: (){},
                ),
                SizedBox(width: 20.0,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}



