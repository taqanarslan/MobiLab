import 'package:flutter/material.dart';

import '../../utils/constants/padding_const.dart';
import '../../utils/constants/radius_const.dart';
import '../../utils/constants/text_const.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConst.horizontal16 + PaddingConst.vertical12,
      padding: PaddingConst.horizontal16 + PaddingConst.vertical4,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: RadiusConst.containerRadius,
          color: Colors.white,
          border: Border.all(color: Colors.grey[300]!, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: const Offset(
                0.0,
                0.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 5.0,
            ) //BoxShadow
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: 1, child: Icon(Icons.search, color: Colors.grey[800])),
          Expanded(
            flex: 7,
            child: Padding(
              padding: PaddingConst.vertical4 + PaddingConst.horizontal12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                    TextConst.whereToGo,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    TextConst.inputHit,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[500]!,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  //TODO: Implement logic
                },
                child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.grey[400]!, width: 0.5),
                        borderRadius: RadiusConst.containerRadius),
                    child: Icon(Icons.sort, color: Colors.grey[800])),
              ))
        ],
      ),
    );
  }
}
