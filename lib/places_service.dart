import 'package:my_places/PlaceType.dart';
import 'package:my_places/place_model.dart';

class PlacesService {
  final places = List<PlaceModel>();

  static const stateAbbreviations = <String>[
    'AK',
    'AL',
    'AR',
    'AZ',
    'CA',
    'CO',
    'CT',
    'DC',
    'DE',
    'FL',
    'GA',
    'HI',
    'IA',
    'ID',
    'IL',
    'IN',
    'KS',
    'KY',
    'LA',
    'MA',
    'MD',
    'ME',
    'MI',
    'MN',
    'MO',
    'MS',
    'MT',
    'NC',
    'ND',
    'NE',
    'NH',
    'NJ',
    'NM',
    'NV',
    'NY',
    'OH',
    'OK',
    'OR',
    'PA',
    'RI',
    'SC',
    'SD',
    'TN',
    'TX',
    'UT',
    'VA',
    'VT',
    'WA',
    'WI',
    'WV',
    'WY',
  ];

  PlacesService() {
    // Test data
    PlaceModel test1 = PlaceModel();
    test1.name = 'Downtown Gym';
    test1.type = PlaceType.gym;
    test1.phone = '123-456-7890';
    test1.address1 = '123 1st St';
    test1.address2 = 'Suite 100';
    test1.city = 'Minneapolis';
    test1.state = 'MN';
    test1.zip = '12345';
    places.add(test1);

    PlaceModel test2 = PlaceModel();
    test2.name = 'The Eatery';
    test2.type = PlaceType.restaurant;
    test2.phone = '111-222-3333';
    test2.address1 = 'Eat Street';
    test2.city = 'Minneapolis';
    test2.state = 'MN';
    test2.zip = '11111';
    places.add(test2);

    PlaceModel test3 = PlaceModel();
    test3.name = 'eArth fOods';
    test3.type = PlaceType.supermarket;
    test3.phone = '111-111-1111';
    test3.address1 = '1 Place Blvd';
    test3.city = 'St. Paul';
    test3.state = 'MN';
    test3.zip = '12121';
    places.add(test3);
  }
}
