import 'package:flutter/material.dart';

import 'config/data.dart';
import 'details_screen.dart';
import 'utils/food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          minimum: const EdgeInsets.only(left: 10, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find the best cooking recipe",
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            contentPadding:
                                const EdgeInsets.only(right: 20, bottom: 10),
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.menu),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                margin: const EdgeInsets.only(right: 0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: header.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Text(
                              header[index],
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              width: 30,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: index == 1 ? Colors.blue : null,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: SingleChildScrollView(
                  child: Wrap(
                    runAlignment: WrapAlignment.start,
                    runSpacing: 20,
                    spacing: 20,
                    children: [
                      ...food.map((e) => GestureDetector(
                            onTap: (() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          info: e,
                                        )))),
                            child: FoodCard(
                              name: e['name'],
                              mins: e['mins'],
                              kcals: e['kcals'],
                              image: e['image'],
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
