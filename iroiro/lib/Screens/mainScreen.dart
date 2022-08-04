import 'package:flutter/material.dart';
import 'package:iroiro/ColorCollection.dart';
import 'package:iroiro/Screens/AdminPage.dart';
import 'package:iroiro/Screens/AgentPages.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController adminIDController = TextEditingController();
  int screenKey = 0;
  @override
  Widget build(BuildContext context) {
    Map selectPagesList = {
      0: "Login to Admin",
      1: "Login to SuperAgent",
      2: "Login to Agent",
      3: "Login to Member",
    };

    void customBottomSheet(context) {
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                  child: SizedBox(
                height: 30,
                width: 70,
                child: Divider(
                  color: Colors.grey,
                  height: 8,
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                ),
              )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // color: loginArrowColor,
                height: 260,
                child: ListView.builder(
                  itemCount: selectPagesList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            setState(
                              () {
                                screenKey = index;
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: btnColor,
                            ),
                            height: 60,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "${selectPagesList[index]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: textFiedlIconColor,
                                  letterSpacing: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      );
    }

    Widget selectPage(int screenKey) {
      if (screenKey == 0) {
        return AdminPage(
            nameController: nameController,
            passwordController: passwordController);
      } else if (screenKey == 1) {
        return AgentPages(
            agentPageTitle: "To SuperAgent Login",
            nameController: nameController,
            passwordController: passwordController,
            adminIDController: adminIDController);
      } else if (screenKey == 2) {
        return AgentPages(
          agentPageTitle: "To Agent",
          nameController: nameController,
          passwordController: passwordController,
          adminIDController: adminIDController,
        );
      } else if (screenKey == 3) {
        return AgentPages(
            agentPageTitle: "To Member",
            nameController: nameController,
            passwordController: passwordController,
            adminIDController: adminIDController);
      } else {
        return AdminPage(
            nameController: nameController,
            passwordController: passwordController);
      }
    }

    return Scaffold(
      body: selectPage(screenKey),
      bottomNavigationBar: GestureDetector(
        onTap: () => AgentPages(
            agentPageTitle: "To SuperAgent Login",
            nameController: nameController,
            passwordController: passwordController,
            adminIDController: adminIDController),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          color: btnColor,
          child: const Text(
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
          onTap: () => customBottomSheet(context),
          child: Container(
            height: 70,
            width: 46,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: btnColor,
            ),
            child: const RotatedBox(
              quarterTurns: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 15,
                  color: textFiedlIconColor,
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
