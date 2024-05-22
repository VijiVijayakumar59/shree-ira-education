import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/buttons/custom_elevated_button.dart';
import 'package:shreeiraeducation/utils/colors/colors.dart';
import 'package:shreeiraeducation/utils/rating/rating_widget.dart';
import 'package:shreeiraeducation/utils/size/constant_height/constant_height.dart';
import 'package:shreeiraeducation/utils/text/custom_text.dart';
import 'package:shreeiraeducation/view/course/screens/practical_screen.dart';
import 'package:shreeiraeducation/view/course/screens/question_answer_screen.dart';
import 'package:shreeiraeducation/view/course/screens/theory_screen.dart';
import 'package:shreeiraeducation/view/notification/screens/notification_screen.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3, // Number of tabs
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: whiteColor,
              ),
            ),
            backgroundColor: themeColor,
            title: const CustomText(
              text: "Course",
              color: whiteColor,
              fontWeight: FontWeight.bold,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ));
                },
                icon: const Icon(
                  Icons.notifications,
                  color: whiteColor,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.25,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: size.height * 0.25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new,
                                    color: whiteColor,
                                    size: 16,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share,
                                    color: whiteColor,
                                    size: 20,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.bookmark_border_outlined,
                                    color: whiteColor,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.skip_previous,
                                    color: whiteColor,
                                    size: 22,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: whiteColor,
                                    size: 28,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.skip_next,
                                    color: whiteColor,
                                    size: 22,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const CustomText(
                                  text: "1:20",
                                  color: whiteColor,
                                ),
                                const Spacer(),
                                const CustomText(
                                  text: "1:20",
                                  color: whiteColor,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.zoom_out_map_rounded,
                                    color: whiteColor,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: size.height * 0.05,
                                  width: size.width * 0.7,
                                  child: const CustomText(
                                    text: "UX Design - From Wireframee to Prototype logo UX Design",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                const CustomElevatedButton(
                                  text: "Enroll Now",
                                  bgColor: themeColor,
                                )
                              ],
                            ),
                            const KHeight(size: 0.01),
                            const RatingWidget(
                              mainAxisAlignment: MainAxisAlignment.end,
                              textOne: "4.0",
                              textTwo: "(125)",
                            ),
                          ],
                        ),
                      ),
                      const TabBar(
                        labelColor: redColor,
                        unselectedLabelColor: greyColor,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: redColor,
                          width: 2,
                        )),
                        tabs: [
                          Tab(text: 'Theory'),
                          Tab(text: 'Practical'),
                          Tab(text: 'Q&A'),
                        ],
                      ),
                      SizedBox(
                        height: size.height,
                        child: const TabBarView(
                          children: [
                            TheoryScreen(),
                            PracticalScreen(),
                            QuestionAnswerScreen(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        color: whiteColor,
                        width: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Lifetime Subscription",
                              fontSize: 10,
                            ),
                            CustomText(
                              text: "INR.2500",
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: themeColor,
                        width: 290,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Add To Cart",
                              // fontSize: 10,
                              color: whiteColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
