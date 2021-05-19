import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginimage.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              color: Colors.purple[900], fontSize: 16),
                          labelText: "Username",
                          hintText: "Enter your Username"),
                      onChanged: (value1) {
                        name = value1;
                        setState(() {});
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.purple[900], fontSize: 16),
                      labelText: "Password",
                      hintText: "Enter your password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  onChange = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: AnimatedContainer(
                  alignment: Alignment.center,
                  height: 50,
                  width: onChange ? 50 : 150,
                  duration: Duration(microseconds: 30),
                  child: onChange
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "login",
                          style: TextStyle(color: Colors.white),
                        ),
                  decoration: BoxDecoration(
                      color: onChange ? Colors.green[700] : Colors.purple[700],
                      borderRadius: BorderRadius.circular(onChange ? 50 : 5))),
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoute.homeRoute);
            //     },
            //     child: Text("Login"),
            //     style: TextButton.styleFrom(minimumSize: Size(120, 50))),
          ],
        ),
      ),
    );
  }
}
