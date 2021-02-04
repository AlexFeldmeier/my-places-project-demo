import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_places/create_place_screen.dart';
import 'package:my_places/list_item.dart';
import 'package:my_places/list_store.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final _listStore = ListStore();

  @override
  void initState() {
    super.initState();
    _listStore.filterPlaces(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => _listStore.isSearching
              ? TextField(
                  controller: _listStore.searchController,
                  onChanged: (value) => _listStore.filterPlaces(context, value),
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: Theme.of(context).textTheme.headline6.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                )
              : Text('My Places'),
        ),
        actions: [
          IconButton(
            icon: Observer(
              builder: (_) =>
                  Icon(_listStore.isSearching ? Icons.clear : Icons.search),
            ),
            onPressed: () {
              _listStore.isSearching = !_listStore.isSearching;
              _listStore.searchController.clear();
              _listStore.filterPlaces(context);
              FocusScope.of(context).unfocus();
            },
          ),
        ],
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: _listStore.filteredPlaces.length,
          itemBuilder: (_, index) => ListItem(
            placeModel: _listStore.filteredPlaces[index],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => CreatePlaceScreen())),
      ),
    );
  }
}
