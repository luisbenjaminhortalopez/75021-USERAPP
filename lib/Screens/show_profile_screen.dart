import 'package:flutter/material.dart';
import 'package:user_app/Screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.age,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Perfil",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 51, 35, 119),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Información del perfil",
                    style:  TextStyle(fontSize: 35, fontWeight: FontWeight.w900)),
                const SizedBox(height: 60),
                Text("Nombre: $name", style: const TextStyle(fontSize: 25)),
                const SizedBox(height: 10),
                Text("Edad: $age años", style: const TextStyle(fontSize: 25)),
                const SizedBox(height: 10),
                Text("Ocupación: $occupation",
                    style: const TextStyle(fontSize: 25)),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 70),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),
                  child: const Text("Regresar a Inicio"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
