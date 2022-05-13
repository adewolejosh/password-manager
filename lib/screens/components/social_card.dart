
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SocialCard extends StatefulWidget {

  final String socialName;
  final dynamic socialLastEdit;
  final dynamic socialLastCopy;

  const SocialCard({Key? key,
    required this.socialName, required this.socialLastEdit,
    required this.socialLastCopy}) : super(key: key);

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: SizedBox(
        width: double.infinity,
        height: 70.0,
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.socialName,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'last edit: ${widget.socialLastEdit}',

                ),
                Text(
                  'last copied: ${widget.socialLastCopy}',

                ),
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}
