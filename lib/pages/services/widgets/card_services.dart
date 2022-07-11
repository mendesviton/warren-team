import 'package:flutter/material.dart';
import '../../pageprofessional/widgets/body_change_professional.dart';
import '../../professional/widgets/body_professional.dart';

class CardService extends StatelessWidget {
  final String type;
  final String time;
  final String value;

  const CardService({
    Key? key,
    required this.type,
    required this.time,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.transparent;

    return InkWell(
      onTap: () {
        backgroundColor = Colors.grey;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ChangeProfessional(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    type,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Tempo: $time",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(221, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                "R\$ $value",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
