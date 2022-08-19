import 'package:flutter/material.dart';

class IngredientsTile extends StatelessWidget {
  const IngredientsTile({
    super.key,
    required this.name,
    required this.amt,
  });
  final String name;
  final String amt;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: const Color.fromARGB(255, 210, 212, 210),
      // leading: const Text(
      //   '',
      //   style: TextStyle(fontSize: 18),
      // ),
      trailing: Text(
        amt,
        style: const TextStyle(fontSize: 20),
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
