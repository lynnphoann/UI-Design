import 'package:flutter/material.dart';
import 'package:iroiro/ColorCollection.dart';
import 'package:iroiro/widget/agentDesignTextField.dart';
import 'package:iroiro/widget/designTextField.dart';

class AgentPages extends StatelessWidget {
  final String agentPageTitle;
  final TextEditingController nameController;
  final TextEditingController passwordController;
  final TextEditingController adminIDController;
  const AgentPages({
    Key? key,
    required this.agentPageTitle,
    required this.nameController,
    required this.passwordController,
    required this.adminIDController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 1, 105, 77),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 47,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 0.6,
                      ),
                    ),
                    Text(
                      agentPageTitle,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.62,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  AgentDesignTextField(
                      textFieldName: "Name",
                      textFieldIcon: Icons.person_outline,
                      controller: nameController,
                      hintName: "Phone Myat Min"),
                  const SizedBox(
                    height: 30,
                  ),
                  AgentDesignTextField(
                    textFieldName: "PassWord",
                    textFieldIcon: Icons.lock_open,
                    controller: passwordController,
                    hintName: "123456",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AgentDesignTextField(
                    textFieldName: "AdminID",
                    textFieldIcon: Icons.group_outlined,
                    controller: adminIDController,
                    hintName: "#012345",
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
                      primary: Colors.white,
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
                                  color: textColor,
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
      ),
    );
  }
}
