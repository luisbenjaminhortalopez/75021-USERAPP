import 'package:flutter/material.dart';
import 'package:user_app/Screens/show_profile_screen.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController  nameController = TextEditingController();
  final TextEditingController  ageController = TextEditingController();
  final TextEditingController  ocupacionController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(title: const Center(child: Text("Crear Perfil",  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white)), ),  backgroundColor: const Color.fromARGB(255, 51, 35, 119)),
      body: Padding(padding:  const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration( labelText: "Nombre"),
          ),
           TextField(
            controller: ageController,
            decoration: const InputDecoration( labelText: "Edad"),
            keyboardType: TextInputType.number,
          ),
           TextField(
            controller: ocupacionController,
            decoration: const InputDecoration( labelText: "Ocupación"),
          ),
          const SizedBox( height: 20),
        ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String age = ageController.text;
                String occupation = ocupacionController.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      name: name,
                      age: age,
                      occupation: occupation,
                    ),
                  ),
                );
              },
               style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple, 
    foregroundColor: Colors.white, 
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), 
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), 
    ),
    elevation: 5, 
  ),
              child: const Text("Guardar y Ver Perfil"),)
        ],
      ),
      ),
    );
  }
}