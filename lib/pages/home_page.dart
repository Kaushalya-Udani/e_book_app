import 'package:ebook_app/widgets/bottom_nav_bar.dart';
import 'package:ebook_app/widgets/button.dart';
import 'package:ebook_app/widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double fullRating = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height* 0.08,
                  ),
                  SizedBox(
                    width: width,
                    height: height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/group.svg',
                            width: 25,
                            height: 25,
                          ),
                        ),

                        Text("Home",
                          style: TextStyle(
                            fontSize: 16,
                          ),),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/cart.svg',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: width*0.02,),
                            SvgPicture.asset(
                              'assets/icons/bell.svg',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: height* 0.01,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Jenifer!",
                        style: TextStyle(
                          color: Color(0xFF070427),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: height* 0.009,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Search your desire books here...",
                        style: TextStyle(
                          color: Color(0xFFB0B6C3),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: height* 0.009,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextForm(
                          hintTextColor: Color(0xFFB0B6C3),
                          backgroundColor: Color(0xFFF8F7FB),
                          borderColor: Color(0xFFF8F7FB),
                        hintText: "Search for e-book",
                          size: 50,
                          icon: Icons.search_outlined,
                      ),
                      Container(
                        child: SvgPicture.asset(
                          'assets/icons/searchGroup.svg',
                          width: 56,
                          height: 56,
                        ),
                      ),

                    ],
                  ),

                  SizedBox(
                    height: height* 0.009,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top trending book",
                        style: TextStyle(
                          color: Color(0xFF070427),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "View all",
                        style: TextStyle(
                          color: Color(0xFFB0B6C3),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: height* 0.009,
                  ),

                  SizedBox(
                    height: height * 0.25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:5,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height* 0.006,
                            ),
                            Container(
                              height: height * 0.2,
                              width: width * 0.29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://image.scoopwhoop.com/q30/s3.scoopwhoop.com/anj/sw/e0aae408-37aa-46db-bea9-6c531d886300.jpg",
                                   ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ),

                            SizedBox(
                              height: height* 0.005,
                            ),

                            const Text(
                              "book title",
                              style: TextStyle(
                                color: Color(0xFF070427),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(
                              height: height* 0.003,
                            ),

                            const Text(
                              "author",
                              style: TextStyle(
                                color: Color(0xFFB0B6C3),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            SizedBox(
              height: height* 0.002,
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20) ,topLeft: Radius.circular(20) ),
                  color: const Color(0xFF112650),
                ),
                child:  Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height* 0.002,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Continue Reading",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "View all",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                    height: height* 0.01),

                      Container(
                        width: width*0.9,
                        height: height*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                height: height * 0.3,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://image.scoopwhoop.com/q30/s3.scoopwhoop.com/anj/sw/e0aae408-37aa-46db-bea9-6c531d886300.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text(
                                      "The Weight of Things",
                                      style: TextStyle(
                                        color: Color(0xFF343434),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "By Richard Turner",
                                      style: TextStyle(
                                        color: Color(0xFFB0B6C3),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Center(
                                          child : RatingBar.builder(
                                              initialRating: 0,
                                              minRating: 1,
                                            itemCount: 5,
                                            itemSize: 23.0,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),

                                            updateOnDrag: true,

                                            itemBuilder: (context, index) => const Icon(
                                              Icons.star_rounded,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (ratingvalue){
                                                setState(() {
                                                  fullRating = ratingvalue;
                                                });
                                            },
                                          ),
                                        ),

                                        SizedBox(width: width*0.02,),

                                        Text(
                                          '($fullRating)',
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height: height* 0.03),
                                    AppButton(
                                        textColor: Colors.white,
                                        backgroundColor: Color(0xFF112650),
                                        text: "Continue",
                                        heigth: height * 0.05,
                                      width: width*0.08,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: height*0.09,
        color: Color(0xFF112650),
          child: NavBars()),
    );
  }
}

// AAA() {
//   return Container(
//     child: Text("gxhsdgh"),
//   );
// }
