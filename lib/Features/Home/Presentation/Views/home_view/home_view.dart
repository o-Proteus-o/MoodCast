import 'package:flutter/material.dart';
import 'package:moodcast/Features/Home/Presentation/Views/home_view/widgets/current_weather.dart';
import 'package:moodcast/Features/Home/Presentation/Views/home_view/widgets/row_od_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Column(children: [Text("data"), Text("data")])),
          SliverToBoxAdapter(
            child: Column(
              children: [
                CurentWeather(),
                Row(
                  children: [
                    RowOfData(text: "10 %", icon: Icons.water_drop),
                    RowOfData(text: "40 KM/h", icon: Icons.water_drop),
                    RowOfData(text: "40 %", icon: Icons.cloud_rounded),
                  ],
                ),
                ChoiceChip(label: Text(""), selected: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
