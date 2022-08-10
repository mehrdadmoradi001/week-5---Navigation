import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ('خوش آمدید'),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.login,
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/welcome.png'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200.0, 40.0),
                  side: BorderSide(color: Colors.white, width: 2.0),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(200.0, 43.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text('ثبت نام'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}