import 'package:flutter/material.dart';

import 'utils/ingredient_tile.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.info});
  final Map info;

  late List ingre = info['ingre'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            padding: const EdgeInsets.only(right: 20, top: 30, left: 20),
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green.withOpacity(.6),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.withOpacity(.6),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(info['image']))),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              info['name'],
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  info['mins'] + " mins",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  info['kcals'] + " kcal",
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  ingre.length.toString(),
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.white,
          ),
          Expanded(
              child: SingleChildScrollView(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ...ingre.map((e) => Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: IngredientsTile(name: e['item'], amt: e['amt']),
                      )),
                  Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
