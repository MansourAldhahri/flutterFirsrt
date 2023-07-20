import 'package:flutter/material.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      body: Center(
        child: Container(
          height: 750,
          width: 390,
          decoration: BoxDecoration(
           // image: ,
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Center(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.amber,
                    ),
                  ),
                ),

                TextFormField(
                  controller: name,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("Full Name"),
                      //prefixIcon: const Icon(Icons.),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  cursorColor: Colors.amber,
                ),
                TextFormField(

                  controller: username,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("User Name"),
                      //prefixIcon: const Icon(Icons.us),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  cursorColor: Colors.amber,
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
                  cursorColor: Colors.amber,
                ),
                TextFormField(
                  controller: phone,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("phone"),
                      prefixIcon: const Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  cursorColor: Colors.amber,
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
                cursorColor: Colors.amber,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Text("Have an account? Login here"),
                ),
                ElevatedButton(
                  onPressed: () {
                    String _email = email.text.toString();
                    String _password = password.text.toString();
                    String _name = name.text.toString();
                    String _phone = phone.text.toString();
                    String _username = username.text.toString();
                    if (_email.isNotEmpty && _password.isNotEmpty && _name.isNotEmpty && _phone.isNotEmpty&&_username.isNotEmpty) {
                      Navigator.of(context).pushNamed('/home');
                    } else {
                      print("Error");
                    }
                    print("Name is: ${name.text.toString()}");
                    print("Email is: ${email.text.toString()}");
                    print("Password is: ${password.text.toString()}");
                    print("Done sucessfully");
                  },
                  child: const Text("Login",
                  style: TextStyle(
                    color: Colors.amber
                  ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
