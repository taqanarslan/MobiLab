import 'package:flutter/material.dart';

import '../../models/explore_model.dart';
import '../../utils/constants/box_const.dart';
import '../../utils/constants/padding_const.dart';
import '../../utils/constants/radius_const.dart';
import '../../utils/constants/size_const.dart';
import '../../utils/constants/text_const.dart';
import '../../utils/constants/colors_const.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({
    Key? key,
    required this.model,
  }) : super(key: key);
  final ExploreModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: PaddingConst.horizontal16 + PaddingConst.bottom32,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
                borderRadius: RadiusConst.image,
                child: Stack(children: [
                  Positioned(
                      bottom: 0,
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Image.network(
                        model.imageUrl,
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: IconButton(
                        icon: const Icon(Icons.favorite_outline,
                            color: Colors.white, size: SizeConst.favouriteIcon),
                        onPressed: () {},
                      ))
                ])),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: SizeConst.starIcon),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.points,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: ColorConst.grey1,
                          size: SizeConst.starIcon,
                        ),
                        Text(
                          model.price,
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                SizedBoxConst.height5,
                Text(
                  '${model.kmAway} ${TextConst.kmAway}',
                  style: const TextStyle(color: ColorConst.grey1),
                ),
                Text(
                  model.date,
                  style: const TextStyle(color: ColorConst.grey1),
                ),
                SizedBoxConst.height5,
                Row(
                  children: [
                    Text('\$${model.price}',
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    const Text(' ${TextConst.night}',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
