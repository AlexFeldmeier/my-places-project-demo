import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_places/place_model.dart';
import 'package:my_places/places_service.dart';
import 'package:provider/provider.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  ObservableList filteredPlaces = ObservableList<PlaceModel>();

  @observable
  bool isSearching = false;

  final searchController = TextEditingController();

  filterPlaces(BuildContext context, [String text]) {
    final placesService = Provider.of<PlacesService>(context, listen: false);

    final searchString = text != null ? text.toLowerCase() : null;

    filteredPlaces.clear();
    for (final place in placesService.places) {
      if (text == null ||
          place.name.toLowerCase().contains(searchString) ||
          place.address1.toLowerCase().contains(searchString) ||
          place.address2.toLowerCase().contains(searchString) ||
          place.city.toLowerCase().contains(searchString) ||
          place.state.toLowerCase().contains(searchString) ||
          place.zip.toLowerCase().contains(searchString)) {
        filteredPlaces.add(place);
      }
    }
  }
}
