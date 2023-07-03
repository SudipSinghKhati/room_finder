import 'package:flutter/material.dart';
import 'package:room_finder_app/core/common/text/style_font_20.dart';
import 'package:room_finder_app/core/common/text/text.dart';

import '../../../../../core/common/text/room_finder_style_text.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: width * 1,
                  height: height * 0.3,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(51, 0, 255, 0.45),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: StyleText(),
                  ),
                ),
                Positioned(
                  bottom: height * -0.07,
                  left: width * 0.11,
                  width: width * 0.8,
                  height: height * 0.27,
                  child: Card(
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.topCenter,
                            child: MakingText('Find a Room')),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: width * 0.7,
                            child: Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(51, 0, 255, 0.45),
                                          width: 2,
                                        ),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(51, 0, 255, 0.45),
                                          width: 2,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.location_on,
                                      ),
                                      hintText: 'Enter the Location',
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Advance Search',
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.5,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Search',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.07,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextStyle1(text: 'Recently Added'),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
