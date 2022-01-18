import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String? email, username, password;

  register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    onSaved: (value) {
                      username = value!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill in the Username field';
                      }
                    },
                    decoration: const InputDecoration(
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      helperText: "",
                      hintText: "Username",
                    ),
                  ),
                  TextFormField(
                    onSaved: (value) {
                      email = value!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill in the Email field';
                      }
                    },
                    decoration: const InputDecoration(
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      helperText: "",
                      hintText: "Email",
                    ),
                  ),
                  TextFormField(
                    onSaved: (value) {
                      password = value!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill in the Password field';
                      }
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      helperText: "",
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                        double.infinity,
                        48,
                      ),
                    ),
                    onPressed: register,
                    child: const Text(
                      'Register',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}