import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateMascotMobile extends StatelessWidget {
  const CreateMascotMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              leadingWidth: 50,
              leading: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CustomBackButton(
                  backIcon: CupertinoIcons.clear_thick_circled,
                  backTitle: "",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
