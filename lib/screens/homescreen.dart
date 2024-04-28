import 'package:educourse_app/screens/courses/design_course.dart';
import 'package:educourse_app/screens/courses/uiux_course.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
        leading: const Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.menu,
            ),
          ],
        ),
        actions: const [
          Icon(Icons.notifications_none_sharp),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 1100,
          color: const Color.fromRGBO(205, 218, 218, 1),
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to New',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Educourse',
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your keyword',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(28.5),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.search,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Course For You',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const UIUXCourse();
                                }));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 242,
                                width: 190,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(197, 4, 98, 1),
                                      Color.fromRGBO(80, 3, 112, 1)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      14,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      'UX Designer from Scratch.',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Image.asset(
                                        'assets/images/course-img-1.png'),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const DesignCourse();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 242,
                                width: 190,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(0, 77, 228, 1),
                                      Color.fromRGBO(1, 47, 135, 1)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      14,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Design Thinking The Beginner',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Image.asset(
                                        'assets/images/course-img-2.png'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'Course By Category',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                child:
                                    Image.asset('assets/images/category1.png'),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              const Text('UI/UX'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                child:
                                    Image.asset('assets/images/category2.png'),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              const Text('VISUAL'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                child:
                                    Image.asset('assets/images/category3.png'),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              const Text('ILLUSTRATION'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                child:
                                    Image.asset('assets/images/category4.png'),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              const Text('PHOTO')
                            ],
                          ),
                        ],
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
