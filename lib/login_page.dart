import 'package:flutter/material.dart';
import 'package:flutter_navigation/blog_page.dart';
import 'forget_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    ('VIP اپلیکیشن سیگنال'),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.login,
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/w.png'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200.0, 40.0),
                  side: BorderSide(color: Colors.black, width: 2.0),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  navigateToPage(context, BlogScreen());
                },
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
              TextButton(
                onPressed: () {
                  navigateToPage(context, ForgetPassword());
                },
                child: Text('فراموشی رمز عبور'),
                style: TextButton.styleFrom(primary: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
