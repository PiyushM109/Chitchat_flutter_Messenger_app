import 'package:chitchat/services/auth/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  void signOut(){
    final authServices = Provider.of<AuthServices>(context, listen:false);
    authServices.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),
      actions: [
        IconButton(onPressed: signOut, icon: const Icon(Icons.logout),),
      ],),
    );
  }
}