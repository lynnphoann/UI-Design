import 'package:flutter/material.dart';
import 'package:iroiro/widget/designTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                        color: Color.fromARGB(255, 1, 146, 107),
                        letterSpacing: 0.6,
                      ),
                    ),
                    const Text(
                      "To Admin Login",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 1, 146, 107),
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  designTextField(
                      textFieldName: "Name",
                      textFieldIcon: Icons.person_outline,
                      controller: nameController,
                      hintName: "Phone Myat Min"),
                  SizedBox(
                    height: 30,
                  ),
                  designTextField(
                    textFieldName: "PassWord",
                    textFieldIcon: Icons.lock_open,
                    controller: passwordController,
                    hintName: "123456",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                                color: Color.fromARGB(255, 255, 190, 93),
                              ),
                            )
                          ]),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: Color.fromARGB(255, 1, 146, 107),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          print("this is bottomBarTap");
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          color: Color.fromARGB(255, 1, 146, 107),
          child: Text(
            "Login with Super Agent",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: GestureDetector(
          onTap: () {
            print("this is actionBtn");
          },
          child: Container(
            height: 70,
            width: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Color.fromARGB(255, 1, 146, 107),
            ),
            child: const RotatedBox(
              quarterTurns: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
