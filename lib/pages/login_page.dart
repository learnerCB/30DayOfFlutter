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
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(
        const Duration(seconds: 1),
      );
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              changeButton ? "images/comp.png" : "images/logg.png",
              fit: BoxFit.contain,
              height: changeButton ? 300 : 300,
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
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Name'),
                        hintText: 'Enter your name here',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                    ),
                    ///////////////////////////////////////////////////////////////////////////////////////////////
                    const SizedBox(
                      height: 20,
                    ),
                    ////////////////////////////////////////////////////////////////////////////////////////////////////

                    Material(
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        //   splashColor: Colors.blueAccent,
                        onTap: () async => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          height: 50,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,

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
