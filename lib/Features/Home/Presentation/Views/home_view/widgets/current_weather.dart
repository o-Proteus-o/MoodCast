import 'package:flutter/material.dart';

class CurentWeather extends StatelessWidget {
  const CurentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blueGrey[300],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "San Francisco",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "12 °",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text("cloudy", style: TextStyle(fontSize: 26)),
            ],
          ),
          // Image.("assets/lotties/clearsunny.svg"),
        ],
      ),
    );
  }
}
