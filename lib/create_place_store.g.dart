// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_place_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreatePlaceStore on _CreatePlaceStore, Store {
  Computed<bool> _$submitEnabledComputed;

  @override
  bool get submitEnabled =>
      (_$submitEnabledComputed ??= Computed<bool>(() => super.submitEnabled,
              name: '_CreatePlaceStore.submitEnabled'))
          .value;

  final _$placeModelAtom = Atom(name: '_CreatePlaceStore.placeModel');

  @override
  PlaceModel get placeModel {
    _$placeModelAtom.reportRead();
    return super.placeModel;
  }

  @override
  set placeModel(PlaceModel value) {
    _$placeModelAtom.reportWrite(value, super.placeModel, () {
      super.placeModel = value;
    });
  }

  @override
  String toString() {
    return '''
placeModel: ${placeModel},
submitEnabled: ${submitEnabled}
    ''';
  }
}
