import 'package:courses/model.dart';
import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
  const Screens({Key? key, required this.model}) : super(key: key);

  final Course model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            model.name,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              model.image,
              width: double.infinity,
              height: 120,
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Description ::',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              model.description,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Trainer ::',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              model.trainer,
              style: const TextStyle(
                // color: Colors.,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Time ::',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              model.time,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Price ::',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              model.price.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
