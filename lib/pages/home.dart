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
          MyBox(
            "What is a computer",
            "Computer is an electronic device that processes data and performs a wide range of tasks by following a set of instructions, typically referred to as programs or software. It can execute complex calculations, store and retrieve data, and perform tasks like word processing, gaming, web browsing, data analysis, and much more.",
            "https://media.licdn.com/dms/image/v2/D5612AQGPAWjwV6d5VQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1704213035509?e=2147483647&v=beta&t=hfyEB-HTJSaOVzv4wlvmnqAgqEko_9_Rf4onikFSHHo",
          ),
          SizedBox(height: 24),
          MyBox(
            "What is a machine learning",
            "Machine learning is a type of Artificial Intelligence that trains algorithms on large datasets to recognize patterns, learn from experience, and make predictions or decisions without being explicitly programmed for every task.",
            "https://media.licdn.com/dms/image/v2/D5612AQGPAWjwV6d5VQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1704213035509?e=2147483647&v=beta&t=hfyEB-HTJSaOVzv4wlvmnqAgqEko_9_Rf4onikFSHHo",
          ),
          SizedBox(height: 24),
          MyBox(
            "What is an artificial intelligence",
            "Artificial intelligence is the simulation of human intelligence in machines that are programmed to think and learn like humans. AI systems can perform tasks that typically require human intelligence, such as visual perception, speech recognition, decision-making, and language translation.",
            "https://media.licdn.com/dms/image/v2/D5612AQGPAWjwV6d5VQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1704213035509?e=2147483647&v=beta&t=hfyEB-HTJSaOVzv4wlvmnqAgqEko_9_Rf4onikFSHHo",
          ),
          SizedBox(height: 24),
        ],
      ),
    );
    // return ListView(children: [Center(child: Text("HomePage"))]);
  }

  Widget MyBox(String title, String subtitle, String img_url) {
    return Container(
      padding: EdgeInsets.all(24.0),
      height: 240,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage(img_url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(subtitle, style: TextStyle(fontSize: 15, color: Colors.white)),
        ],
      ),
    );
  }
}
