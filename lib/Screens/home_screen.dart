import 'package:flutter/material.dart';
import 'package:user_app/Screens/create_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: const Text("Inicio"),  backgroundColor: Colors.blue),
body: Center(
  child: ElevatedButton(
    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfileScreen()));},
    child: const Text("Crear Perfil")),
),
    );
  }
}