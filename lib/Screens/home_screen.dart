import 'package:flutter/material.dart';
import 'package:user_app/Screens/create_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 10, 25, 74),
appBar: AppBar(title: const Center(child: Text("Inicio",  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white)), ),  backgroundColor: const Color.fromARGB(255, 51, 35, 119)),
body: Center(
  child: Container(
  decoration: BoxDecoration(
     boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 1, 6, 66).withOpacity(0.5), 
        spreadRadius: 5, 
        blurRadius: 7, 
        offset: const Offset(1, 2), 
      ),
    ],
    color: const Color.fromARGB(255, 27 ,41 ,86), 
    borderRadius: BorderRadius.circular(20), 
  ),
  height: 500,
  width: 350,
    child:  Column(
      children: [
         const SizedBox(height: 30),
         const Text("Bienvenido", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white)),
                 const SizedBox(height: 30),
         const Text("Cree un perfil con su información personal", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center, ),
                 const SizedBox(height: 70),
        ElevatedButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfileScreen()));},
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
          child:  const Text("Crear Perfil")),
      ],
    ),
  ),
),
    );
  }
}