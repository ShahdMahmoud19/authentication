import 'package:authentication/enter_code.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController controller1 = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
                    'Forgot \npassword?',
                    style: TextStyle(
                      fontSize: 42,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4280EF),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Enter your email for the verification process,\n we will send code to your email',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2C2C2C),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),

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
                  const SizedBox(height: 40),
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
                  hintText: 'Type something longer here...',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              InkWell(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    setState(() {
                      controller1.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EnterCode()),
                      );
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
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(238, 247, 255, 255),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
