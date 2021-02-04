import 'package:mobx/mobx.dart';
import 'package:my_places/PlaceType.dart';

part 'place_model.g.dart';

class PlaceModel = _PlaceModel with _$PlaceModel;

abstract class _PlaceModel with Store {
  @observable
  String name;

  @observable
  PlaceType type;

  @observable
  String address1;

  @observable
  String address2;

  @observable
  String city;

  @observable
  String state;

  @observable
  String zip;

  @observable
  String phone;
}
