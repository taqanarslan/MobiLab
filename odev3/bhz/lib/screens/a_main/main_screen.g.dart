part of 'main_screen.dart';
final List<Widget> _pages = <Widget>[
  const ExploreScreen(),
   Container(),
   Container(),
   Container(),
   Container(),
];

List<BottomNavigationBarItem> listOfItems(int index) {
  return [
    BottomNavigationBarItem(
        icon: Icon(
          index == 0 ? Icons.home : Icons.home_outlined,
        ),
        label: TextConst.explore),
    BottomNavigationBarItem(
        icon: Icon(
          index == 1 ? Icons.thumb_up : Icons.thumb_up_outlined,
        ),
        label: TextConst.wishllists),
    BottomNavigationBarItem(
        icon: Icon(
          index ==2 ? Icons.connecting_airports : Icons.connecting_airports_outlined,
        ),
        label: TextConst.trips),
    BottomNavigationBarItem(
        icon: Icon(
          index ==3 ? Icons.chat_bubble : Icons.chat_bubble_outline,
        ),
        label: TextConst.inbox),
    BottomNavigationBarItem(
        icon: Icon(
          index == 4 ? Icons.person : Icons.person_outline,
        ),
        label: TextConst.profile),
  ];
}
