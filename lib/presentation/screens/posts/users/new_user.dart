import 'package:flutter/material.dart';
import 'package:posts_flutter_bloc/presentation/widgets/widgets.dart';

class NewUserScreen extends StatefulWidget {
  static String name = 'NewUserScreen';
  const NewUserScreen({super.key});

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  final List<ItemDropDown> listGender = [
    ItemDropDown(label: 'Femenino', value: 'female'),
    ItemDropDown(label: 'Masculino', value: 'male')
  ];
  final List<ItemDropDown> listStatus = [
    ItemDropDown(label: 'Activo', value: 'active'),
    ItemDropDown(label: 'Inactivo', value: 'inactive')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CustomInputNewUser(
              nameInput: 'Nombre',
              icon: Icons.person_add,
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomInputNewUser(
              nameInput: 'Correo',
              icon: Icons.mail,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSelectNewUser(
                  list: listGender,
                  nameInput: 'Género',
                ),
                CustomSelectNewUser(
                  list: listStatus,
                  nameInput: 'Status',
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text('Guardar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
