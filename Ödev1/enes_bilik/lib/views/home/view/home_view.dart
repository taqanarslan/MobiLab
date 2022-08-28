import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/colored_button.dart';
import '../model/button_model.dart';
import '../view-model/home_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NamedColorModel title = ref.watch(titleProvider);

    return Scaffold(
      appBar: _appBar(title),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: NamedColorList().colors.length,
        itemBuilder: (BuildContext context, int index) {
          return _button(ref, index);
        },
      ),
    );
  }

  GestureDetector _button(WidgetRef ref, int index) {
    return GestureDetector(
      onTap: () => ref.read(titleProvider.notifier).changeTitle(
            NamedColorList().colors[index],
          ),
      child: ColoredButton(namedColorModel: NamedColorList().colors[index]),
    );
  }

  AppBar _appBar(NamedColorModel title) {
    return AppBar(
      toolbarHeight: kToolbarHeight + 20,
      backgroundColor: Colors.black,
      elevation: 0,
      title: Text(
        title.colorName,
        style: TextStyle(color: title.color, fontSize: 30),
      ),
    );
  }
}
