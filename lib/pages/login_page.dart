import 'package:app_presensi_pegawai/services/api/auth.dart';
import 'package:flutter/material.dart';

outlinedInputDecoration(String label) => InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: const Icon(Icons.email_outlined),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2.0,
        ),
      ),
      labelText: label,
    );

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String? identifier, password;

  login() {
    // if (_formKey.currentState!.validate()) {
    // AuthService.login(identifier, password);
    // }
    Navigator.pushReplacementNamed(context, "/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onSaved: (value) {
                  identifier = value!;
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
                  hintText: "Enter email",
                ),
              ),
              const SizedBox(
                height: 16,
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
                onPressed: login,
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
