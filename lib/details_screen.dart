import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ixoye_food_delevery_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/backward.svg", height: 11,),
                SvgPicture.asset("assets/icons/menu.svg", height: 11,)
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_1_big.png"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Ensalada de Vegetales\n",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextSpan(
                        text: "Con tomate rojo",
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.5)
                        )
                      ),

                    ]
                  ),
                ),
                Text(
                  "\$20",
                  style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: kPrimaryColor),
                )
              ],
            ),
            SizedBox( height: 20.0,),
            Text(
              "Aliqua irure minim incididunt duis proident nulla magna ullamco. Velit sit tempor id nulla proident enim. Mollit aute laborum excepteur tempor aute aliquip aliquip Lorem adipisicing. Reprehenderit elit esse ea proident. Tempor non eu pariatur amet incididunt ea ea duis et. Adipisicing magna et sint mollit ex. Incididunt voluptate proident laborum in.",
              textAlign: TextAlign.justify,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 27.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      borderRadius: BorderRadius.circular(27)
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox( width: 30.0,),
                        SvgPicture.asset(
                          "assets/icons/forward.svg",
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.26)
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith( color: kPrimaryColor, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}