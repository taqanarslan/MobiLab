import 'package:flutter/material.dart';

import '../core/padding_utility_card.dart';
import 'gol_kenari_data.dart';

class TropikTabPage extends StatefulWidget {
  const TropikTabPage({Key? key}) : super(key: key);

  @override
  State<TropikTabPage> createState() => _TropikTabPageState();
}

class _TropikTabPageState extends State<TropikTabPage> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: _items.length,
            padding: PaddingUtility().paddingHorizontal,
            itemBuilder: (context, index) {
              return _CategoryCard(model: _items[index]);
            }));
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.topRight, children: [
              Image.asset(_model.imagePath, fit: BoxFit.fill),
              Icon(
                Icons.favorite,
              )
            ]),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                children: [
                  Text(
                    _model.title,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Spacer(),
                  Icon(
                    _model.icon,
                    size: 15,
                  ),
                  Text(
                    "${_model.price}",
                  ),
                ],
              ),
            ),
            Text(_model.mapText, style: Theme.of(context).textTheme.bodySmall),
            Text(
              _model.dateText,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Row(
              children: [
                Text("${_model.mainText}",
                    style: Theme.of(context).textTheme.bodySmall),
                Icon(_model.moneyicon, size: 20),
                Text(_model.dayText,
                    style: Theme.of(context).textTheme.bodySmall)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionItems {
  late final List<CollectionModel> _items;

  CollectionItems() {
    _items = [
      CollectionModel(
          imagePath: ProjectImages().imageAbiansemal,
          title: "Abiansemal,Endonezya",
          price: 4.53,
          icon: Icons.star,
          moneyicon: Icons.attach_money,
          mapText: "1.909 kilometre uzakta",
          mainText: "1.280 ",
          dayText: "gece",
          dateText: "6-11 Eyl"),
      CollectionModel(
          imagePath: ProjectImages().imageUbudi,
          title: "Ubud,Endonezya",
          price: 3.2,
          icon: Icons.star,
          moneyicon: Icons.attach_money,
          mainText: "1.280  ",
          mapText: "1.202 kilometre uzakta",
          dayText: "gece",
          dateText: "5-7 Eyl "),
    ];
  }
}
