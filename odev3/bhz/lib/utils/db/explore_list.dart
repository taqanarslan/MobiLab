import '../../models/explore_model.dart';

class ExploreFakeDB {
  static const List<ExploreModel> list = [_firstData, _secondData, _thirData];
  static const List<ExploreModel> list1 = [_thirData, _forthData];

  static const ExploreModel _firstData = ExploreModel(
    title: 'El Port de la Selvia, Spain',
    date: 'Feb 1-6',
    imageUrl:
        'https://pbs.twimg.com/media/C9r7UllU0AAVbb5?format=jpg&name=large',
    kmAway: '2,438',
    points: '4.75',
    price: '484',
  );
  static const ExploreModel _secondData = ExploreModel(
    title: 'De ruko Mito Fanko, Volnaria',
    date: 'Dec 5-9',
    imageUrl:
        'https://irecommend.ru/sites/default/files/product-images/89783/cWCQ0wc9M8G3AksvHKWsg.jpg',
    kmAway: '23.4',
    points: '3.8',
    price: '120',
  );
  static const ExploreModel _thirData = ExploreModel(
    title: 'Hillfland, Sindia',
    date: 'June 4-9',
    imageUrl: 'https://fb.ru/misc/i/gallery/78786/2333594.jpg',
    kmAway: '12',
    points: '5.0',
    price: '1200',
  );
  static const ExploreModel _forthData = ExploreModel(
    title: 'Brikwell, Hillfland',
    date: 'Oct 25-31',
    imageUrl: 'https://fb.ru/misc/i/gallery/78786/2333594.jpg',
    kmAway: '190',
    points: '5.1',
    price: '2000',
  );
}
