import 'package:flutter/material.dart';
import 'package:user_app/Screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;
  const ProfileScreen({super.key, required this.name, required this.age, required this.occupation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Perfil")),
      body:  Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Text("Nombre: $name", style: const TextStyle(fontSize: 18)),
            Text("Edad: $age", style: const TextStyle(fontSize: 18)),
            Text("Ocupación: $occupation", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
         ElevatedButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));},
           style: ElevatedButton.styleFrom(
            minimumSize: const Size(50, 70),
    backgroundColor: Colors.deepPurple, 
    foregroundColor: Colors.white, 
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), 
    ),
    elevation: 5, 
  ),
          child:  const Text("Regresar a Inicio")),
          ],
        ),
      ),
    );
  }
}