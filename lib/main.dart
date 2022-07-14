import "package:flutter/material.dart";
import "dart:math";

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: const Color(0xFF3a97ff),
      appBar: AppBar(
        backgroundColor: const Color(0xFF294ea8),
        title: const Center(
          child: Text("Ask Me Anything"),
        ),
      ),
      body: const askMe(),
    ),
  ));
}

class askMe extends StatefulWidget {
  const askMe({Key? key}) : super(key: key);

  @override
  State<askMe> createState() => _askMeState();
}

class _askMeState extends State<askMe> {
  int imageNum = 1;
  void changeAnswer() {
    setState(() => {
          imageNum = Random().nextInt(5) + 1,
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => {
          changeAnswer(),
        },
        child: Image.asset('images/ball$imageNum.png'),
      ),
    );
  }
}
