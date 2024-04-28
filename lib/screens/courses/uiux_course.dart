import 'package:flutter/material.dart';

class UIUXCourse extends StatefulWidget {
  const UIUXCourse({super.key});

  @override
  State<UIUXCourse> createState() => _UIUXCourseState();
}

class _UIUXCourseState extends State<UIUXCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(80, 3, 112, 1),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(197, 4, 98, 1),
                  Color.fromRGBO(80, 3, 112, 1),
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'UX Designer from Scratch.',
                    style: TextStyle(fontSize: 32.61, color: Colors.white),
                  ),
                  const Text(
                    'Basic guideline & tips & tricks for how to become a UX designer easily.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 34,
                        width: 34,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 82, 178, 1),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Author:',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(190, 154, 197, 1)),
                      ),
                      const Text(
                        ' Abhishek',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '4.8 ⭐ (20 review)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(
                    40,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromRGBO(230, 239, 239, 1),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              height: 60,
                              width: 50,
                              child: Image.asset('assets/images/youtube.png'),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Introduction',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Lorem Ipsum is simply dummy text ... ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
