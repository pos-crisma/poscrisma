import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: SystemMode.isDark(context) //
            ? darkCardBackground
            : lightCardBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: const Image(
                    image: backgroundChurch,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Header',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'tag',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              Text(
                'optinal',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ],
      ),
    );
  }
}
