import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_places/PlaceType.dart';
import 'package:my_places/create_place_store.dart';
import 'package:my_places/places_service.dart';

class CreatePlaceScreen extends StatefulWidget {
  @override
  _CreatePlaceScreenState createState() => _CreatePlaceScreenState();
}

class _CreatePlaceScreenState extends State<CreatePlaceScreen> {
  final _createPlaceStore = CreatePlaceStore();

  Widget _createForm() {
    return Column(
      children: [
        TextField(
          onChanged: (value) => _createPlaceStore.placeModel.name = value,
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Name',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Observer(
          builder: (_) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.fitness_center),
                color: _createPlaceStore.placeModel.type == PlaceType.gym
                    ? Theme.of(context).colorScheme.onSurface
                    : Colors.grey,
                onPressed: () =>
                    _createPlaceStore.placeModel.type = PlaceType.gym,
              ),
              IconButton(
                icon: Icon(Icons.restaurant),
                color: _createPlaceStore.placeModel.type == PlaceType.restaurant
                    ? Theme.of(context).colorScheme.onSurface
                    : Colors.grey,
                onPressed: () =>
                    _createPlaceStore.placeModel.type = PlaceType.restaurant,
              ),
              IconButton(
                icon: Icon(Icons.shopping_bag),
                color:
                    _createPlaceStore.placeModel.type == PlaceType.supermarket
                        ? Theme.of(context).colorScheme.onSurface
                        : Colors.grey,
                onPressed: () =>
                    _createPlaceStore.placeModel.type = PlaceType.supermarket,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          onChanged: (value) => _createPlaceStore.placeModel.phone = value,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Phone',
          ),
        ),
        SizedBox(
          height: 48,
        ),
        Text(
          'Address',
          style: Theme.of(context).textTheme.headline5,
        ),
        TextField(
          onChanged: (value) => _createPlaceStore.placeModel.address1 = value,
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Address 1',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          onChanged: (value) => _createPlaceStore.placeModel.address2 = value,
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Address 2',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          onChanged: (value) => _createPlaceStore.placeModel.city = value,
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'City',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        DropdownButtonFormField<String>(
          onChanged: (value) => _createPlaceStore.placeModel.state = value,
          decoration: InputDecoration(
            labelText: 'State',
          ),
          items: PlacesService.stateAbbreviations.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          onChanged: (value) => _createPlaceStore.placeModel.zip = value,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            labelText: 'Zip',
          ),
          onEditingComplete: () => _createPlaceStore.submitPressed(context),
        ),
        SizedBox(
          height: 16,
        ),
        Observer(
          builder: (_) => RaisedButton(
            color: Theme.of(context).colorScheme.secondary,
            textColor: Theme.of(context).colorScheme.onSecondary,
            onPressed: _createPlaceStore.submitEnabled
                ? () => _createPlaceStore.submitPressed(context)
                : null,
            child: Text('Create Place'),
            // color: Theme.of(context).accentColor,
            // colorBrightness: Theme.of(context).accentColorBrightness,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create Place'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: _createForm(),
            ),
          ),
        ),
      ),
    );
  }
}
