import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentMobile extends StatelessWidget {
  const ContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBar,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.deepPurple.shade700,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    height: constraints.maxHeight,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                style: ManropeFont.body1,
                decoration: borderInputDecoration(
                  borderColor: Colors.grey.shade100,
                  fillColor: Colors.grey.shade100,
                  borderCircular: 12,
                ).copyWith(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 8.0,
                    ),
                    child: Icon(
                      CupertinoIcons.search,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TypographyText(
                    text: "Information",
                    style: ManropeFont.body1.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
