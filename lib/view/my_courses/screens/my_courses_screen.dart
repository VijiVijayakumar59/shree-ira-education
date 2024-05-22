import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/colors/colors.dart';
import 'package:shreeiraeducation/utils/size/constant_width/constant_width.dart';
import 'package:shreeiraeducation/utils/text/custom_text.dart';

class MyCoursesScreen extends StatefulWidget {
  const MyCoursesScreen({super.key});

  @override
  State<MyCoursesScreen> createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    double value = 50;
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: whiteColor),
          backgroundColor: themeColor,
          title: const CustomText(
            text: "My Courses",
            color: whiteColor,
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => NotificationScreen(),
                // ));
              },
              icon: const Icon(
                Icons.search,
                color: whiteColor,
              ),
            )
          ],
        ),
        // drawer: DrawerWidget(size: size),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 14.0,
                childAspectRatio: (itemWidth / itemHeight),
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 6,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/home.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const CustomText(
                                text: "UX Design - Wireframe to Prototype logo UX Design",
                                maxLines: 2,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: size.height * 0.02,
                                    width: size.width * 0.08,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 121, 253, 20),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                    child: const Center(
                                      child: CustomText(
                                        text: "4.0",
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                  const KWidth(size: 0.02),
                                  const CustomText(
                                    text: "(125)",
                                    color: blackColor,
                                  ),
                                ],
                              ),
                              Slider(
                                min: 0.0,
                                max: 100.0,
                                value: value,
                                thumbColor: whiteColor,
                                activeColor: redColor,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                },
                              ),
                              const CustomText(
                                text: "75% Completed",
                                color: redColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
