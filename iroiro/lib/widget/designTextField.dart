import 'package:flutter/material.dart';
import 'package:iroiro/ColorCollection.dart';

class designTextField extends StatelessWidget {
  final String textFieldName;
  final IconData textFieldIcon;
  final TextEditingController controller;
  final String hintName;
  const designTextField({
    Key? key,
    required this.textFieldName,
    required this.textFieldIcon,
    required this.controller,
    required this.hintName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(162, 232, 232, 232),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textFieldName,
            style: TextStyle(
                color: textFieldColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: 1),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                textFieldIcon,
                color: textFiedlIconColor,
                size: 24,
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 19,
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: hintName,
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(198, 168, 168, 168),
                    ),
                  ),
                  style: const TextStyle(
                      color: Color.fromARGB(184, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  controller: controller,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
