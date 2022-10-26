import '../../models/explore_model.dart';

class ExploreFakeDB {
  static const List<ExploreModel> list = [_firstData, _secondData, _thirData];

  static const ExploreModel _firstData = ExploreModel(
    title: 'El Port de la Selvia, Spain',
    date: 'Feb 1-6',
    imageUrl: '',
    kmAway: '2,438',
    points: '4.75',
    price: '484',
  );
  static const ExploreModel _secondData = ExploreModel(
    title: 'De ruko Mito Fanko, Volnaria',
    date: 'Dec 5-9',
    imageUrl: '',
    kmAway: '23.4',
    points: '3.8',
    price: '120',
  );
  static const ExploreModel _thirData = ExploreModel(
    title: 'Hillfland, Sindia',
    date: 'June 4-9',
    imageUrl: '',
    kmAway: '12',
    points: '5.0',
    price: '1200',
  );
}
