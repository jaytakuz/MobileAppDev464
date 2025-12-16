import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  
  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  var receiveMoney = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}