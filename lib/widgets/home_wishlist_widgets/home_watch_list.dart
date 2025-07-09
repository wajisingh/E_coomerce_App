import 'package:flutter/material.dart';

class HomeWatchList extends StatelessWidget {
  const HomeWatchList({super.key});

  Widget buildWatchCard() {
    return Container(
      width: 142,
      height: 212,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset("assets/img/watch.png",
                width: 144, height: 127, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "IWC Schaffhausen 2021 Pilot's Watch SIHH 2 44mm",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text("₹1500",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                    SizedBox(width: 8),
                    Text("₹2499",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 10)),
                    SizedBox(width: 8),
                    Text("40%Off",
                        style: TextStyle(color: Colors.orange, fontSize: 10)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(4, (_) => buildWatchCard()),
          ),
        ),
      ),
    );
  }
}
