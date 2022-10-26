import 'package:flutter/material.dart';
import 'package:odev_4/core/icons_view.dart';

import '../core/padding_utility_card.dart';
import '../service/user_data.dart';

class GolKenariTabPage extends StatefulWidget {
  const GolKenariTabPage({Key? key}) : super(key: key);

  @override
  State<GolKenariTabPage> createState() => _GolKenariTabPageState();
}

class _GolKenariTabPageState extends State<GolKenariTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          //in case if error found
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          //once data is ready this else block will execute
          // items will hold all the data of DataModel
          //items[index].name can be used to fetch name of product as done below
          var items = data.data as List<ProductDataModel>;
          return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: PaddingUtility().paddingBottom,
                  child: Padding(
                    padding: PaddingUtility().paddingGeneral,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(alignment: Alignment.topRight, children: [
                          Image.network(items[index].url2.toString(),
                              fit: BoxFit.fill),
                          IconsView().favorilericon,
                        ]),
                        Padding(
                          padding: PaddingUtility().paddingTop,
                          child: Row(
                            children: [
                              Text(
                                "${items[index].title}",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Spacer(),
                              Icon(
                                Icons.star,
                                size: 15,
                              ),
                              Text(
                                "${items[index].price}",
                              ),
                            ],
                          ),
                        ),
                        Text("${items[index].mapText}",
                            style: Theme.of(context).textTheme.bodySmall),
                        Text(
                          "${items[index].dateText}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Row(
                          children: [
                            Text("${items[index].mainText}",
                                style: Theme.of(context).textTheme.bodySmall),
                            Icon(Icons.attach_money_outlined, size: 20),
                            Text("${items[index].dayText}",
                                style: Theme.of(context).textTheme.bodySmall)
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        } else {
          // show circular progress while data is getting fetched from json file
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}

/*class CollectionItems {
  late final List<CollectionModel> _items;

  CollectionItems() {
    _items = [
      CollectionModel(
          imagePath: ProjectImages().imageCollection,
          title: "Requista, Fransa",
          price: 4.53,
          icon: Icons.star,
          moneyicon: Icons.attach_money,
          mapText: "1.909 kilometre uzakta",
          mainText: "1.280 ",
          dayText: "gece",
          dateText: "6-11 Kas"),
      CollectionModel(
          imagePath: ProjectImages().imageGuneyCollection,
          title: "İtalya ,Riva",
          price: 3.2,
          icon: Icons.star,
          moneyicon: Icons.attach_money,
          mainText: "1.280  ",
          mapText: "1.202 kilometre uzakta",
          dayText: "gece",
          dateText: "5-7 Kas "),
    ];
  }
}*/
