import 'package:flutter/material.dart';

import 'package:iroiro/ColorCollection.dart';

class AgentDesignTextField extends StatelessWidget {
  final String textFieldName;
  final IconData textFieldIcon;
  final TextEditingController controller;
  final String hintName;
  const AgentDesignTextField({
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
          color: Color.fromARGB(255, 50, 165, 137),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textFieldName,
            style: const TextStyle(
                color: Color.fromARGB(255, 2, 107, 67),
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
                color: Colors.white,
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
                      color: Color.fromARGB(197, 235, 235, 235),
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
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
