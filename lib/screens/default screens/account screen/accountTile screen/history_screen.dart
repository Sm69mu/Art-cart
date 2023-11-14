import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({ Key? key }) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(title: "History".text.make()),
    );
  }
}