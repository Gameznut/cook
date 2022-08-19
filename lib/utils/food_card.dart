import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.name,
    required this.mins,
    required this.kcals,
    required this.image,
  });
  final String name;
  final String mins;
  final String kcals;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width < 320
          ? ((MediaQuery.of(context).size.width) * .94)
          : MediaQuery.of(context).size.width < 600
              ? ((MediaQuery.of(context).size.width * .90) / 2)
              : MediaQuery.of(context).size.width < 728
                  ? (MediaQuery.of(context).size.width * .90) / 3
                  : MediaQuery.of(context).size.width < 1024
                      ? (MediaQuery.of(context).size.width * .90) / 4
                      : MediaQuery.of(context).size.width < 1240
                          ? (MediaQuery.of(context).size.width * .90) / 5
                          : MediaQuery.of(context).size.width < 1306
                              ? (MediaQuery.of(context).size.width * .90) / 6
                              : MediaQuery.of(context).size.width < 1440
                                  ? (MediaQuery.of(context).size.width * .90) /
                                      7
                                  : 215,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.only(right: 10, top: 10),
          // ignore: sort_child_properties_last
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.withOpacity(.6),
            ),
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 20,
              color: Colors.white,
            ),
          ),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("$mins mins"), Text("$kcals kcal")],
            )
          ]),
        )
      ]),
    );
  }
}
