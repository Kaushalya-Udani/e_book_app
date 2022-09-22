import 'package:ebook_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  double fullRating = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration:
        BoxDecoration(color: Color(0xFFE5E5E5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20,bottom: 15),
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        'assets/icons/backarrow.svg',
                        width: 18,
                        height: 13,
                      ),
                    ),

                    const Text("Book Detail",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),

                    SvgPicture.asset(
                      'assets/icons/share.svg',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: height * 0.3,
                width: width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://kbimages1-a.akamaihd.net/e66039ee-6845-4573-a01b-3390323b3039/1200/1200/False/the-good-dinosaur-disney-movie-storybook.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height *0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A Love Hate Thing",
                        style: TextStyle(
                          color: Color(0xFF070427),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: height*0.008),

                      Text(
                        "By Whitney D. Grandison",
                        style: TextStyle(
                          color: Color(0xFFB0B6C3),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: height * 0.08,
                    width: height * 0.08,
                    decoration: BoxDecoration(
                      color: Color(0xFF112650),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.bookmark_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.02),

              Container(
                width: width,
                height: height*0.08,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  color: Color(0xFFF8F7FB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18,top: 14,bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rating",
                            style: TextStyle(
                              color: Color(0xFFB0B6C3),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '($fullRating)',
                                        style: const TextStyle(
                                          fontSize: 12,
                                            color: Color(0xFF070420),
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),

                                      Center(
                                        child : RatingBar.builder(
                                          initialRating: 0,
                                          minRating: 1,
                                          itemCount: 1,
                                          itemSize: 12.0,
                                          itemPadding: EdgeInsets.symmetric(vertical: 4.0),
                                          direction: Axis.horizontal,
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

                                      //SizedBox(width: width*0.02,),


                                    ],
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        width: 80,
                        indent: 6,
                        endIndent: 6,
                        thickness: 2,
                        //color: Color(0xFFB0B6C3),
                      ),
                      Column(
                        children: [
                          Text(
                            "Page",
                            style: TextStyle(
                              color: Color(0xFFB0B6C3),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '220',
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF070420),
                                fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        width: 80,
                        indent: 6,
                        endIndent: 6,
                        thickness: 2,
                        //color: Color(0xFFB0B6C3),
                      ),
                      Column(
                        children: [
                          Text(
                            "Language",
                            style: TextStyle(
                              color: Color(0xFFB0B6C3),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'English',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF070420),
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: height*0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Details",
                    style: TextStyle(
                      color: Color(0xFF070427),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.02),

              SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      maxLines: 7,
                      style: TextStyle(
                        color: Color(0xFF070427),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.025),

              Expanded(
                child: AppButton(
                    textColor: Colors.white,
                    backgroundColor: Color(0xFF112650),
                    text: 'BUY | 6',
                    width: width,
                    heigth: height * 0.07),
              )


            ],
          ),
        ),
      ),
    );
  }
}
