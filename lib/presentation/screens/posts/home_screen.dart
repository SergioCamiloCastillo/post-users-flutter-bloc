import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static String name = 'HomeScreenPost';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de usuarios',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text('Nombre'),
            subtitle: Text('sergio@gmail.com'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          );
        },
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/new-user');
        },
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
