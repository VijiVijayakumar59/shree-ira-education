import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/colors/colors.dart';
import 'package:shreeiraeducation/utils/text/custom_text.dart';
import 'package:shreeiraeducation/view/authentication/widgets/custom_textfield_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: whiteColor),
          backgroundColor: themeColor,
          title: const CustomText(
            text: "Cart",
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
        body: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: List.generate(
                        8,
                        (index) => Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            color: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/home.png",
                                    height: size.height * 0.123,
                                    width: size.width * 0.214,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.5,
                                        child: const CustomText(
                                          text: "UX Design - From Wireframe to Prototype logo UX Design",
                                          maxLines: 2,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.56,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Column(
                                              children: [
                                                CustomText(
                                                  text: "INR.5000",
                                                  fontSize: 12,
                                                ),
                                                CustomText(
                                                  text: "INR.5000",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                )
                                              ],
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.delete_outline_outlined,
                                                color: redColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 2,
                color: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.058,
                            width: size.width * 0.52,
                            child: const CustomTextFieldWidget(label: "Apply Coupon Code"),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            height: size.height * 0.058,
                            width: size.width * 0.35,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(themeColor),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: const BorderSide(color: greyColor),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const CustomText(
                                text: "Apply",
                                color: whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: size.height * 0.058,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(redColor),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(color: greyColor),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const CustomText(
                            text: "Proceed to Pay",
                            color: whiteColor,
                          ),
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
