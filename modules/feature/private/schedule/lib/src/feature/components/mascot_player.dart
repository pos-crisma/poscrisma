import 'package:flutter/material.dart';
import 'package:store/store.dart';

class MascotPlayer extends StatelessWidget {
  const MascotPlayer({
    super.key,
    required this.young,
    required this.textAlign,
    this.showGodParents = false,
    this.alignment = CrossAxisAlignment.start,
  });

  final MemberMascot young;
  final TextAlign textAlign;
  final CrossAxisAlignment alignment;
  final bool showGodParents;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          young.name ?? "",
          textAlign: textAlign,
          style: Theme.of(context)
              .textTheme
              .bodyMedium! //
              .copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
        ),
        showGodParents
            ? RichText(
                textAlign: textAlign,
                text: TextSpan(
                  text: "Padrinho: ",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: young.godParent?.godFather ?? "Não vinculado",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            : Container(),
        showGodParents
            ? RichText(
                textAlign: textAlign,
                text: TextSpan(
                  text: "Madrinha: ",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: young.godParent?.godMother ?? "Não vinculado",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            : Container(),
        const SizedBox(height: 4),
      ],
    );
  }
}
