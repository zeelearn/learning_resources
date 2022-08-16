import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../mainpage.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  late String _email, _pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: SizedBox(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/
                      child: Container()
                      //Image.asset('asset/images/flutter-logo.png')
                      ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  validator: (val) =>
                      !val!.contains("@") ? "Email Id is not Valid" : null,
                  onSaved: (val) => _email = val!,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Email',
                      hintText: 'Enter Email id '),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 30, bottom: 0),
                child: TextFormField(
                  onSaved: (val) => _pass = val!,
                  validator: (val) => val!.length < 6
                      ? "Password length should be Greater than 6"
                      : null,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Password',
                      hintText: 'Enter  password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180.0, top: 20),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Color(0xffea1a27), fontSize: 15),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    color: const Color(0xffea1a27),
                    borderRadius: BorderRadius.circular(20)),
                child: MaterialButton(
                  onPressed: () {
                    if(formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Get.to(() => const MainPage());
                      Get.snackbar("Success", "Login SuccessFully",colorText:const Color(0xffea1a27),
                          backgroundColor: Colors.white );

                    }

                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Need Help to chat',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
