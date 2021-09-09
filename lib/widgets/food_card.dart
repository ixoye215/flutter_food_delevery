import 'package:flutter/material.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function()? press;
  const FoodCard({
    Key? key,
    required this.title,
    required this.ingredient,
    required this.image,
    required this.price,
    required this.calories, 
    required this.description, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(0.06),
                ),
              )
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(this.image)
                  )
                ),
              )
            ),
            Positioned(
              top: 80,
              right: 20,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith( color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$title",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "With $ingredient",
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.4),
                      ),
                    ),
                    SizedBox( height: 16,),
                    Text(
                      this.description,
                      maxLines: 4,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.65),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox( height: 16,),
                    Text(
                      this.calories
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}