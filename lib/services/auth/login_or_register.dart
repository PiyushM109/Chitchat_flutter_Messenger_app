import 'package:chitchat/pages/loginpage.dart';
import 'package:chitchat/pages/register_page.dart';
import 'package:flutter/material.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showLoginPage = true;

  void togglepages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglepages);
    }else{
      return RegisterPage(onTap: togglepages);
    }
  }
}