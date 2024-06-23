import 'package:flutter/material.dart';
import 'package:store/views/productsPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
           
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
              ),
            ),



            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  if (username == 'admin' && password == 'masuk') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Incorrect username or password!'),
                        ),
                      );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                ),
                child: Text('Login'),
              ),
            )
          ]
        )
      )
    );


    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         TextField(
    //           onChanged: (value) {
    //             setState(() {
    //               username = value;
    //             });
    //           },
    //           decoration: InputDecoration(hintText: 'Username'),
    //         ),
    //         TextField(
    //           onChanged: (value) {
    //             setState(() {
    //               password = value;
    //             });
    //           },
    //           decoration: InputDecoration(hintText: 'Password'),
    //           obscureText: true,
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             if (username == 'admin' && password == 'password') {
    //               Navigator.pushReplacementNamed(context, '/home');
    //             }
    //           },
    //           child: Text('Login'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}