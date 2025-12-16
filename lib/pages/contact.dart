import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Hello Contact Page"),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text("Watcharapong Wanna"),
              Text("Email: watcharapong_wa@cmu.ac.th")
              ],
            ),
          ),
        ],
      ),
    );
  }
}