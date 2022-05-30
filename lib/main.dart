import 'package:app/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
      title: "LoginApp",
      home: LoginPage(),
    ));

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle mystyle = const TextStyle(fontSize: 28);

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    final usernameFeild = TextField(
      controller: _username,
      style: const TextStyle(fontSize: 28),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35.5),
          )),
    );

    final emailFeild = TextField(
      style: const TextStyle(fontSize: 28),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "E-mail Adress",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35.5),
          )),
    );

    final passwordFeild = TextField(
      obscureText: true,
      style: const TextStyle(fontSize: 28),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35.5),
          )),
    );
    final LoginButton = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(32.0),
      color: const Color.fromARGB(255, 14, 51, 214),
      child: MaterialButton(
        onPressed: () {
          print("\nlogin\n\n");
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Homepage(username: _username.text)));
        },
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(21.0),
       child: const Text("Login App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
       ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                const Icon(Icons.supervised_user_circle,size: 300.5,),
                const SizedBox(
                  height: 50,
                ),
                usernameFeild,
                const SizedBox(
                  height: 10.0,
                ),
                emailFeild,
                const SizedBox(
                  height: 10.0,
                ),
                passwordFeild,
                const SizedBox(height: 22,),
                LoginButton,

              ],
            ),
          ),
        ),
      ),
    );
  }
}
