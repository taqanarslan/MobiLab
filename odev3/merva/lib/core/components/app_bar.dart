import 'package:flutter/material.dart';
import 'package:my_airbnb/util/language.dart';
import 'package:my_airbnb/util/util_color.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final TabController controller;

  const MyAppBar({
    Key? key,
    required this.height,
    required this.controller,
  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _MyAppBarState extends State<MyAppBar> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    
  }

  late TabController _controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: MyColors.white,
                boxShadow: [
                  BoxShadow(
                      color: MyColors.grey.withAlpha(100),
                      blurRadius: 3.0,
                      offset: Offset(1.0, 1.0))
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          ProjectText.where,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          ProjectText.search,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list_outlined,
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(width: double.infinity,
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  controller: _controller,
                  tabs: [
                    Icon(
                      Icons.houseboat_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    Icon(
                      Icons.houseboat_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    Icon(
                      Icons.maps_home_work_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ]),
            ),
            
          ),
        ],
      ),
    );
  }
}
