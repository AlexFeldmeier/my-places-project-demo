// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStore, Store {
  final _$filteredPlacesAtom = Atom(name: '_ListStore.filteredPlaces');

  @override
  ObservableList<dynamic> get filteredPlaces {
    _$filteredPlacesAtom.reportRead();
    return super.filteredPlaces;
  }

  @override
  set filteredPlaces(ObservableList<dynamic> value) {
    _$filteredPlacesAtom.reportWrite(value, super.filteredPlaces, () {
      super.filteredPlaces = value;
    });
  }

  final _$isSearchingAtom = Atom(name: '_ListStore.isSearching');

  @override
  bool get isSearching {
    _$isSearchingAtom.reportRead();
    return super.isSearching;
  }

  @override
  set isSearching(bool value) {
    _$isSearchingAtom.reportWrite(value, super.isSearching, () {
      super.isSearching = value;
    });
  }

  @override
  String toString() {
    return '''
filteredPlaces: ${filteredPlaces},
isSearching: ${isSearching}
    ''';
  }
}
