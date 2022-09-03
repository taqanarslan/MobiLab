import 'package:flutter/material.dart';
import '../../utils/constants/margin_const.dart';
import '../../utils/constants/padding_const.dart';
import '../../utils/constants/radius_const.dart';
import '../../utils/constants/size_const.dart';
import '../../utils/services/color_catalog.dart';
import '../../widgets/boxes/box_widget.dart';
import '../../widgets/colors/color_box.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  /// initial value displayed when ListWidget is built
  Color boxColor = ColorCatalog.colorList[0].color;
  String colorText = ColorCatalog.colorList[0].colorText;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConst.sliverBoxHeight,
            child: GridView.builder(
              padding: PaddingConst.gridView,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 1.5),
              itemBuilder: (BuildContext context, int i) {
                return ColorBoxWidget(
                  colorText: ColorCatalog.colorList[i].colorText,
                  color: ColorCatalog.colorList[i].color,
                  colorFunc: () {
                    setState(
                      () {
                        boxColor = ColorCatalog.colorList[i].color;
                        colorText = ColorCatalog.colorList[i].colorText;
                      },
                    );
                  },
                );
              },
              itemCount: ColorCatalog.colorList.length,
            ),
          ),
        ),
        CustomWidget.sizedBox30,
        SliverToBoxAdapter(
          child: Container(
            margin: MarginConst.sliverHor,
            height: SizeConst.colorBoxHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: RadiusConst.colorBox20,
              border: Border.all(color: Colors.black, width: 0.4),
            ),
            child: Text(colorText),
          ),
        )
      ],
    );
  }
}
