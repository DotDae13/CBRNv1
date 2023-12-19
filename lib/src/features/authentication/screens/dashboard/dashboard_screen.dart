import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:progresssystem_splashscreen/src/constants/colors.dart';
import 'package:progresssystem_splashscreen/src/constants/image_strings.dart';
import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';

import '../../../../constants/sizes.dart';

class Dashboard extends StatelessWidget {

  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme
        .of(context)
        .textTheme;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.black),
          title: Text(tAppName, style: Theme
              .of(context)
              .textTheme
              .headline4),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20, top: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor),
              child: IconButton(onPressed: () {},
                  icon: const Image(image: AssetImage(tUserProfileImage))),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tDashboardTitle, style: txtTheme.bodyText1),
                Text(tDashboardHeading, style: txtTheme.headline2),
                const SizedBox(height: tDashboardPadding),

                //Categories

                SizedBox(
                  height: 110,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                          width: 175,
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset("assets/images/dashboard/dash1.png"),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),),
                                child: Center(
                                  child: Text("Chemical",
                                    style: txtTheme.headline6?.apply(
                                        color: Colors.black),),
                                ),

                              ),
                            ],
                          )
                      ),
                      SizedBox(
                          width: 175,
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset("assets/images/dashboard/dash2.png"),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),),
                                child: Center(
                                  child: Text("Biological",
                                    style: txtTheme.headline6?.apply(
                                        color: Colors.black),),
                                ),

                              ),
                            ],
                          )
                      ),
                      SizedBox(
                          width: 175,
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset("assets/images/dashboard/dash3.png"),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),),
                                child: Center(
                                  child: Text("Radiological",
                                    style: txtTheme.headline6?.apply(
                                        color: Colors.black),),
                                ),

                              ),
                            ],
                          )
                      ),
                      SizedBox(
                          width: 175,
                          height: 50,
                          child: Row(
                            children: [
                              Image.asset("assets/images/dashboard/dash4.png"),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),),
                                child: Center(
                                  child: Text("Nuclear",
                                    style: txtTheme.headline6?.apply(
                                        color: Colors.black),),
                                ),

                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: tDashboardPadding),
                SizedBox(
                  width: 345,
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const SizedBox(height: 30),
                            Flexible(
                                child: Text(
                                  "Health",
                                  style: txtTheme.headline4,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                            ),
                          ],
                        )
                      ],

                    ),
                  ),
                ),
                const SizedBox(height: tDashboardPadding),
                SizedBox(
                  width: 345,
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "LifeLine",
                                style: txtTheme.headline4,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )
                      ],

                    ),
                  ),
                )




              ],
            ),
          ),
        )
    );
  }
}
