import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MaterialColor color = Colors.deepPurple;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  double height = 0;
  double width = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        height = 440;
        width = 340;
      });
    });
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        height = 450;
        width = 350;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: 750,
          width: 390,
          child: Container(
            height: 750,
            width: 390,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: height != 450
                ? null
                : Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Center(
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          decoration: InputDecoration(
                              label: const Text("Email"),
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                              )),
                        ),
                        TextFormField(
                          controller: password,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            label: Text("Password"),
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/sign');
                          },
                          child:
                              const Text("Don't have an account? SignUp here"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            String _email = email.text.toString();
                            String _password = password.text.toString();
                            if (_email.isNotEmpty && _password.isNotEmpty) {
                              Navigator.of(context).pushNamed('/home');
                            } else {
                              print("Error");
                            }
                            print("Email is: ${email.text.toString()}");
                            print("Password is: ${password.text.toString()}");
                            print("Done sucessfully");
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.amber),
                          ),
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
