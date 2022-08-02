import 'package:flutter/material.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Color.fromARGB(162, 232, 232, 232),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textFieldName,
            style: TextStyle(
                color: Color.fromARGB(177, 37, 119, 107),
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: 1),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                textFieldIcon,
                color: Color.fromARGB(255, 255, 190, 93),
                size: 24,
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 19,
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: hintName,
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(198, 168, 168, 168),
                    ),
                  ),
                  style: TextStyle(
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
