import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          MyBox(),
          SizedBox(height: 24),
          MyBox(),
          SizedBox(height: 24),
          MyBox(),
          SizedBox(height: 24),
        ],
      ),
    );
    // return ListView(children: [Center(child: Text("HomePage"))]);
  }

  Widget MyBox() {
    return Container(
      padding: EdgeInsets.all(24.0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage("https://cdn.pixabay.com/photo/2025/09/29/07/22/kitten-9861764_1280.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What is a computer",
            style: TextStyle(
              fontSize: 25, 
              color: Colors.white, 
              fontWeight: FontWeight.bold
            )
          ),
          Text(
            "Computer is an electronic device that processes data and performs a wide range of tasks by following a set of instructions, typically referred to as programs or software. It can execute complex calculations, store and retrieve data, and perform tasks like word processing, gaming, web browsing, data analysis, and much more.",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}