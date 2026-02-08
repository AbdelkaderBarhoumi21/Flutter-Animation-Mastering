import 'package:flutter/material.dart';

class TestScreen2 extends StatefulWidget {
  const TestScreen2({super.key});

  @override
  State<TestScreen2> createState() => _TestScreen2State();
}

class _TestScreen2State extends State<TestScreen2> {
  List<String> items = [
    "Flutter",
    "Dart",
    "Animation",
    "Widget",
    "State",
    "Context",
    "Build",
    "Material",
    "Cupertino",
    "Scaffold",
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 60,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: Stack(
                  children: [
                    if (index == 0)
                      Positioned(
                        top: -20,
                        child: Icon(
                          Icons.check,
                          color: Colors.yellow,
                          size: 10,
                        ),
                      ),

                    AnimatedContainer(
                      duration: Duration(milliseconds: 800),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _currentIndex == index
                            ? Colors.red
                            : Colors.grey,
                      ),
                      child: Text(
                        items[index],
                        style: TextStyle(
                          fontSize: 24,
                          color: _currentIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
