import 'package:flutter/material.dart';
import 'package:iroiro/ColorCollection.dart';
import 'package:iroiro/widget/designTextField.dart';

class AdminPage extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController passwordController;
  const AdminPage({
    Key? key,
    required this.nameController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 47,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                      letterSpacing: 0.6,
                    ),
                  ),
                  const Text(
                    "To Admin Login",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                designTextField(
                    textFieldName: "Name",
                    textFieldIcon: Icons.person_outline,
                    controller: nameController,
                    hintName: "Phone Myat Min"),
                const SizedBox(
                  height: 30,
                ),
                designTextField(
                  textFieldName: "PassWord",
                  textFieldIcon: Icons.lock_open,
                  controller: passwordController,
                  hintName: "123456",
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    primary: btnColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400),
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: loginArrowColor,
                            ),
                          )
                        ]),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
