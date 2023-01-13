import 'package:flutter/material.dart';

import 'main.dart';
import 'sign_up.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _MyAppState();
}

class _MyAppState extends State<Sign_In> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 300,
                height: 300,
              ),
            ),
            Center(
              child: Text(
                "SIGN IN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 350,
                child: TextField(
                  controller: t1,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Username Or Email ID",
                    hintText: "Enter Username Or Email ID",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 350,
                child: TextField(
                  obscureText: true,
                  controller: t2,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Unable to Forgot Password."),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {
                  if (t1.text.toString().isEmpty && t2.text.toString().isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please Fill the Username."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                  else if(t1.text.toString().isNotEmpty && t2.text.toString().isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please Fill the Password."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                  else if(t1.text.toString().isEmpty && t2.text.toString().isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please Fill the Required Field."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                  else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Sign in Successfully."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp(),));
                  }
                },
                child: Text("SIGN IN"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_Up(),),);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                "-------------------- OR --------------------"),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/google.png",width: 40,height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/facebook.png",width: 40,height: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/twitter.png",width: 40,height: 40,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
