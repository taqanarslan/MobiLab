import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_airbnb/viewmodel/house_viewmodel.dart';

class HousePage extends StatefulWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  final _houseViewmodel = HouseViewmodel();

  final List<String> imgList = [
    'images/bath.jpg',
    'images/bed.jpg',
    'images/kitchen.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView.separated(
          itemCount: _houseViewmodel.houses.length,
          itemBuilder: (context, index) {
            final house = _houseViewmodel.houses[index];
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      child: CarouselSlider(
                    options: CarouselOptions(),
                    items: imgList
                        .map(
                          (item) => AspectRatio(
                            aspectRatio: 3 / 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )),
                  SizedBox(height: 10),
                  Text(
                    house.location,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    house.date,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "${house.cost} TL gece",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 30),
        ),
      ),
    );
  }
}
