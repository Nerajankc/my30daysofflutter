import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/loginimage.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.purple[900], fontSize: 16),
                      labelText: "Username",
                      hintText: "Enter your Username"),
                ),
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
          ElevatedButton(
              onPressed: () {
                print("hello");
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
