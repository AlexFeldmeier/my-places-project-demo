import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_places/place_model.dart';
import 'package:my_places/places_service.dart';
import 'package:provider/provider.dart';

part 'create_place_store.g.dart';

class CreatePlaceStore = _CreatePlaceStore with _$CreatePlaceStore;

abstract class _CreatePlaceStore with Store {
  @observable
  PlaceModel placeModel = PlaceModel();

  @computed
  bool get submitEnabled =>
      placeModel.name != null &&
      placeModel.name.isNotEmpty &&
      placeModel.type != null &&
      placeModel.phone != null &&
      placeModel.phone.isNotEmpty &&
      placeModel.address1 != null &&
      placeModel.address1.isNotEmpty &&
      placeModel.city != null &&
      placeModel.city.isNotEmpty &&
      placeModel.state != null &&
      placeModel.state.isNotEmpty &&
      placeModel.zip != null &&
      placeModel.zip.isNotEmpty;

  submitPressed(BuildContext context) {
    if (submitEnabled) {
      final placesService = Provider.of<PlacesService>(context, listen: false);
      placesService.places.add(placeModel);
      Navigator.of(context).pop();
    }
  }
}
