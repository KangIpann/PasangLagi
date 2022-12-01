import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../../data/local/session/user_session.dart';
import '../../data/model/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  // Initially password is obscure
  bool _obscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      User user  = User(email: emailController.text, password: passwordController.text);
      UserSessions.saveSessions(user);
      debugPrint('Form is valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset("assets/logo/pasanglagi.png"),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/logo/branding.png", width: 200),
          Container(
            padding: EdgeInsets.all(20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 80),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                              child: const Text(
                                'Masuk',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 24),
                              ),),
                          Icon(Icons.person, color: Colors.black, size: 24,)
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          controller: emailController,
                          validator:
                              ValidationBuilder().required().email().build(),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                color: Color(0xff214782),
                              ),
                            ),
                            labelText: 'Masukkan email',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          obscureText: _obscureText,
                          controller: passwordController,
                          validator: ValidationBuilder()
                              .required()
                              .minLength(6)
                              .build(),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                color: Color(0xff214782),
                              ),
                            ),
                            labelText: 'Masukkan kata sandi',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: _obscureText
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off)),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color(0xffB3674F),
                            ),
                            child: const Text('Login'),
                            onPressed: () {
                              _validateAndSubmit();
                              debugPrint("name : ${emailController.text}");
                              debugPrint("pass : ${passwordController.text}");
                            },
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Belum punya akun?',
                              style: TextStyle(
                                  color: Color(0xff718096),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          TextButton(
                            child: const Text(
                              'Daftar',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffC6A379),
                              ),
                            ),
                            onPressed: () {
                              //signup screen
                              // Navigator.pop(context);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const SigninPage()));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
