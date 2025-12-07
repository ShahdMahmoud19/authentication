import 'package:authentication/forgot_password.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool isShowpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Back', style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Sign in ',
                    style: TextStyle(
                      fontSize: 47,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4280EF),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Please log in into your account',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2C2C2C),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2C2C2C),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
              TextFormField(
                controller: controller1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  if (!value.contains('@') || !value.contains('gmail.com')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 239, 236, 236),
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: 'Enter your email',
                  suffixIcon: Icon(Icons.check, color: Colors.green),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2C2C2C),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
              TextFormField(
                obscureText: isShowpassword,
                controller: controller2,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (value.length < 8) {
                    return 'please enter At least 8 chars';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 239, 236, 236),
                  hintText: 'Enter your Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isShowpassword = !isShowpassword;
                      });
                    },
                    icon: isShowpassword
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgotPassword();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Color(0xffF78720), fontSize: 17),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    setState(() {
                      controller1.text;
                      controller2.text;
                    });
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 342,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff4280EF),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(238, 247, 255, 255),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                width: 342,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff4280EF), width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Googl.png'),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4280EF),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Container(
                alignment: Alignment.center,
                width: 342,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff4280EF), width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/facebook.png'),
                    Text(
                      'Sign in with Facebook',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4280EF),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
