import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bank_app_ui/components/circle.dart';
import 'package:bank_app_ui/components/rectangle.dart';

import '../constents/constents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            leading: const Icon(
              FontAwesomeIcons.bars,
              color: themeColor,
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(
                  FontAwesomeIcons.bell,
                  color: themeColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 10.0,
                ),
                child: Icon(
                  FontAwesomeIcons.solidUser,
                  color: themeColor,
                ),
              )
            ],
            elevation: 0,
            backgroundColor: Colors.blue[50],
            title: Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Easy',
                  style: TextStyle(
                      color: themeColor,
                      fontSize: 24,
                      fontFamily: 'Poppins Bold'),
                  children: [
                    TextSpan(
                      text: ' Transfer',
                      style: TextStyle(
                          fontFamily: 'Poppins Regular',
                          fontSize: 24,
                          color: themeColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(1, 3),
                        ),
                      ],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: themeColor),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, top: 30, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Good Afternoon,\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins Medium'),
                            children: [
                              TextSpan(
                                text: 'Hammad Ali.',
                                style: TextStyle(
                                    fontFamily: 'Poppins Regular',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, top: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                FontAwesomeIcons.magnifyingGlass,
                                size: 16,
                                color: Colors.grey,
                              ),
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins Regular'),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Circle(
                          circleIcon: Icons.attach_money_rounded,
                          circleText: '  Add\nMoney',
                        ),
                        Circle(
                          circleIcon: Icons.money_off_csred_rounded,
                          circleText: 'Withdraw',
                        ),
                        Circle(
                          circleIcon: Icons.wallet,
                          circleText: 'Save',
                        ),
                        Circle(
                          circleIcon: Icons.pie_chart_rounded,
                          circleText: 'Invest',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Rectangle(
                        rectangleIcon: Icons.payment_rounded,
                        rectangleText: 'Online Payments',
                        rectangleText2:
                            '\nPayments                                 ',
                      ),
                      Rectangle(
                        rectangleIcon: Icons.cast_for_education_rounded,
                        rectangleText: 'Education',
                        rectangleText2: '\nPay Education Fee                  ',
                      ),
                      Rectangle(
                        rectangleIcon: Icons.percent_rounded,
                        rectangleText: 'Discounts',
                        rectangleText2: '\nAvail exciting Discounts        ',
                      ),
                      Rectangle(
                        rectangleIcon: Icons.savings_outlined,
                        rectangleText: 'Savings',
                        rectangleText2: '\nEarn profit everyday!             ',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
