import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';

class AcampsPage extends StatefulWidget {
  final CampData campData;
  const AcampsPage({super.key, required this.campData});

  @override
  State<AcampsPage> createState() => _AcampsPageState();
}

class _AcampsPageState extends State<AcampsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.campData.title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(widget.campData.description),
      ),
    );
  }
}
