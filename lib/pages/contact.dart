import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final items = List<String>.generate(1000, (i) => "Item$i");
  // List mydata = ['apple', 'banana', 'papaya'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Icon(Icons.access_alarm_outlined),
          title: Text(items[index]),
        );
      },
    );

    // return ListView(
    //   children: [
    //     ListTile(onTap: () {}, leading: FlutterLogo(), title: Text(mydata[0]), subtitle: Text('subtitle'), trailing: FlutterLogo()),
    //     ListTile(onTap: () {}, leading: FlutterLogo(), title: Text(mydata[1]), subtitle: Text('subtitle'), trailing: FlutterLogo()),
    //     ListTile(onTap: () {}, leading: FlutterLogo(), title: Text(mydata[2]), subtitle: Text('subtitle'), trailing: FlutterLogo()),
    //   ],
    // );
  }
}
