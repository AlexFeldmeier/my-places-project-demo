import 'package:flutter/material.dart';
import 'package:my_places/PlaceType.dart';
import 'package:my_places/place_model.dart';

class ListItem extends StatefulWidget {
  final PlaceModel placeModel;

  ListItem({Key key, @required this.placeModel}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool collapsed = true;

  IconData _typeIcon() {
    switch (widget.placeModel.type) {
      case PlaceType.gym:
        return Icons.fitness_center;
      case PlaceType.restaurant:
        return Icons.restaurant;
      case PlaceType.supermarket:
        return Icons.shopping_bag;
      default:
        return null;
    }
  }

  String _getAddressText() {
    return '${widget.placeModel.address1 ?? ''} ${widget.placeModel.address2 ?? ''}\n' +
        '${widget.placeModel.city ?? ''}, ${widget.placeModel.state ?? ''} ${widget.placeModel.zip ?? ''}';
  }

  Widget _details() {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            _typeIcon(),
            size: 32,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.placeModel.name ?? '',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(widget.placeModel.phone ?? ''),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => setState(() => collapsed = !collapsed),
          child: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_getAddressText()),
                collapsed ? SizedBox.shrink() : _details(),
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
