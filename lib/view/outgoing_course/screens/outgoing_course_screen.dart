import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/colors/colors.dart';
import 'package:shreeiraeducation/utils/size/constant_height/constant_height.dart';
import 'package:shreeiraeducation/utils/text/custom_text.dart';
import 'package:shreeiraeducation/view/course/screens/course_main_screen.dart';
import 'package:shreeiraeducation/view/notification/screens/notification_screen.dart';

class OutgoingCourseScreen extends StatelessWidget {
  const OutgoingCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  color: themeColor,
                  height: 50,
                ),
                Column(
                  children: List.generate(
                    8,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CourseScreen(),
                          ));
                        },
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Card(
                                  elevation: 4,
                                  // color: blackColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: SizedBox(
                                    height: size.height * 0.13,
                                    width: size.width * 0.88,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        right: 8,
                                        top: 8,
                                        bottom: 8,
                                        left: 80,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CustomText(
                                            text: "UX Design - From Wireframe to Prototype logo UX Design",
                                            maxLines: 2,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          KHeight(size: 0.01),
                                          CustomText(
                                            text: "Sam Smith",
                                            fontSize: 12,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 4,
                              top: 15,
                              child: Container(
                                height: size.height * 0.1,
                                width: size.width * 0.223,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(22)),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/home.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
