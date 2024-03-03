import 'package:courses/model.dart';
import 'package:courses/screens.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Courses App',
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screens(
                        model: Course.courses[index],
                      );
                    },
                  ),
                );
              },
              child: Card(
                elevation: 10,
                child: Row(
                  children: [
                    Image.asset(
                      Course.courses[index].image,
                      width: 150,
                      height: 160,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        Course.courses[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: Course.courses.length,
        ),
      ),
    );
  }
}
