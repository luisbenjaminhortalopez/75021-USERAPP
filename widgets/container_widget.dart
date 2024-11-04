import 'package:flutter/material.dart';
import 'package:user_app/Screens/create_profile_screen.dart';


class NewContainer extends StatelessWidget {
  const NewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
  decoration: BoxDecoration(
    color: Colors.blue, 
    borderRadius: BorderRadius.circular(20), 
  ),
  height: 500,
  width: 350,
    child:  Column(
      children: [
         const SizedBox(height: 30),
         const Text("Bienvenido", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                 const SizedBox(height: 30),
         const Text("Cree un perfil con su información personal", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                 const SizedBox(height: 30),
        ElevatedButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfileScreen()));},
          child:  const Text("Crear Perfil")),
      ],
    ),
  );
  }
}