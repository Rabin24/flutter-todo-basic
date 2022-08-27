// ignore_for_file: deprecated_member_use, unnecessary_new, avoid_unnecessary_containers, non_constant_identifier_names, library_private_types_in_public_api, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var Validators;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/iamges.png', scale: 4.0),
              Container(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        'Flutter Login',
                        style: TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                              // ignore: unnecessary_const
                              border: const UnderlineInputBorder(
                                  borderSide:
                                      // ignore: unnecessary_const
                                      const BorderSide(
                                          width: 1, color: Colors.grey)),
                              labelText: 'Email'),
                          validator: Validators.compose([
                            Validators.required('email is required'),
                            Validators.email('invalid email address')
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                              // ignore: unnecessary_const
                              border: const UnderlineInputBorder(
                                  borderSide:
                                      // ignore: unnecessary_const
                                      const BorderSide(
                                          width: 1, color: Colors.grey)),
                              labelText: 'Password'),
                          validator: Validators.compose(
                              [Validators.required('password is required')]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print(email.text);
                              print(password.text);
                              print('success');
                            }
                          },
                          // ignore: sort_child_properties_last
                          child: const Text("Login"),
                          textColor: Colors.white,
                          color: Colors.black,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
