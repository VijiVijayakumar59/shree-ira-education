import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/colors/colors.dart';
import 'package:shreeiraeducation/utils/helper/grid_view.dart';
import 'package:shreeiraeducation/utils/size/constant_height/constant_height.dart';
import 'package:shreeiraeducation/utils/text/custom_text.dart';
import 'package:shreeiraeducation/view/design/screens/design_screen.dart';
import 'package:shreeiraeducation/view/home/widgets/drawer_widget.dart';
import 'package:shreeiraeducation/view/notification/screens/notification_screen.dart';
import 'package:shreeiraeducation/view/outgoing_course/screens/outgoing_course_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: whiteColor),
          backgroundColor: themeColor,
          title: const Center(
            child: CustomText(
              text: "Easymem",
              color: whiteColor,
              fontWeight: FontWeight.w600,
            ),
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
        drawer: DrawerWidget(size: size),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.26,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/home.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "Learn from Basics",
                                  color: whiteColor,
                                  fontSize: 18,
                                ),
                                CustomText(
                                  text: "Full UI/UX Designs",
                                  color: whiteColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                            ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(themeColor),
                                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                )),
                              ),
                              onPressed: () {},
                              child: const CustomText(
                                text: "Know More",
                                color: whiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.28 - -50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Search for course, mentor, topic, etc.',
                                  hintStyle: const TextStyle(color: greyColor),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: const BorderSide(color: Color.fromARGB(255, 199, 189, 189)),
                                  ),
                                  prefixIcon: const Icon(
                                    CupertinoIcons.search,
                                    color: redColor,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                                ),
                              ),
                              const KHeight(size: 0.03),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const CustomText(
                                    text: "Outgoing Course",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const OutgoingCourseScreen(),
                                      ));
                                    },
                                    child: const CustomText(
                                      text: "View all",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: redColor,
                                    ),
                                  ),
                                ],
                              ),
                              const KHeight(size: 0.03),
                              Card(
                                color: whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(22),
                                      child: Container(
                                        height: size.height * 0.11,
                                        width: size.width * 0.23,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/home.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.58,
                                            child: const CustomText(
                                              text: "UX Design - From Wireframe to Prototype logo UX Design",
                                              maxLines: 2,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const CustomText(
                                            text: "Sam Smith",
                                            fontSize: 13,
                                            color: Color.fromARGB(255, 130, 129, 129),
                                          ),
                                          const Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              CustomText(
                                                text: "35% Completed",
                                                color: redColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const KHeight(size: 0.02),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Top Categories",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomText(
                                    text: "View all",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: redColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1.85,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 18,
                  children: List.generate(choices.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        navigateToScreen(context, choices[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Stack(
                              fit: StackFit.expand,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(14.0),
                                  child: Image.asset(
                                    "assets/images/grid.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14.0),
                                      color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 40,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: choices[index].title,
                                    color: Colors.white,
                                  ),
                                  CustomText(
                                    text: choices[index].courses,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToScreen(BuildContext context, Choice choice) {
    switch (choice.title) {
      case 'Design':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DesignScreen()),
        );
        break;

      default:
        break;
    }
  }
}
