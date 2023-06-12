import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/flutter.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Name'),
                        hintText: 'Enter your name here',
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    //////////////////////////////////////////////////
                    const SizedBox(
                      height: 20,
                    ),
                    ////////////////////////////////////////////////////////
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Password'),
                        hintText: 'Enter your secret password here',
                      ),
                    ),
                    ///////////////////////////////////////////////////////////////////////////////////////////////
                    const SizedBox(
                      height: 20,
                    ),
                    ////////////////////////////////////////////////////////////////////////////////////////////////////
                    // ElevatedButton.icon(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   icon: const Icon(Icons.login),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(150, 40),
                    //   ),
                    //   label: const Text("Login"),
                    // ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(
                          const Duration(seconds: 2),
                        );
                        // ignore: use_build_context_synchronously
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 2000),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                        ///////////////////////////
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                    ////////////////////////////////////////////////////////////////////////////////////////////////////////
                    const SizedBox(
                      height: 20,
                    ),
                    ///////////////////////////////////////////////
                    // const Text(
                    //   "Powered by @C12",
                    //   style: TextStyle(
                    //       fontSize: 12,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.grey,
                    //       textBaseline: TextBaseline.alphabetic),
                    // ),
                    // //////////////////////////////
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
