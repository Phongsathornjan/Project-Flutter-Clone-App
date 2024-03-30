import 'package:airbnb_clone/screens/property_details_screen.dart';
import 'package:airbnb_clone/shared/widgets/Property_card.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

import '../theme/colors.dart';

class PropertyTypeList extends StatefulWidget {
  const PropertyTypeList({Key? key}) : super(key: key);

  @override
  State<PropertyTypeList> createState() => _PropertyTypeListState();
}

class _PropertyTypeListState extends State<PropertyTypeList> {
  int selectedIndex = 0;
  int length = Property.HotelData.length;

  void handleItemClick(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (selectedIndex == 0) {
      length = Property.HotelData.length;
    } else if (selectedIndex == 1) {
      length = Property.ApartmentData.length;
    } else if (selectedIndex == 2) {
      length = Property.BnBData.length;
    } else if (selectedIndex == 3) {
      length = Property.VillaData.length;
    } else if (selectedIndex == 4) {
      length = Property.resortData.length;
    }
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    final List<Map<String, dynamic>> propertyTypes = [
      {'type': 'โรงแรม', 'icon': Icons.hotel},
      {'type': 'อพาร์ทเมนท์', 'icon': Icons.apartment},
      {'type': 'บีแอนด์บี', 'icon': Icons.bedroom_child},
      {'type': 'วิลล่า', 'icon': Icons.villa},
      {'type': 'รีสอร์ท', 'icon': Icons.holiday_village},
    ];
    return Column(
      children: [
        Container(
          height: 60.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: propertyTypes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => handleItemClick(index),
                child: Container(
                  width: size.width * 0.2,
                  margin: const EdgeInsets.only(
                    right: 4.0,
                    left: 4.0,
                    top: 4.0,
                  ),
                  child: Column(
                    children: [
                      Icon(propertyTypes[index]['icon']),
                      const SizedBox(height: 2.0),
                      Text(
                        propertyTypes[index]['type'],
                        style: textTheme.bodyText2!.copyWith(
                          fontWeight: (index == selectedIndex)
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                      (index == selectedIndex)
                          ? Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              height: 2.0,
                              width: 64.0,
                              color: appBlack,
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 380,
          height: 500,
          child: ListView.builder(
            itemCount: length,
            itemBuilder: (context, index) {
              if (selectedIndex == 0) {
                final property = Property.HotelData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PropertyDetailsScreen(
                                property: property,
                              )),
                    );
                    print(index);
                  },
                  child: PropertyCard(property: property),
                );
              } else if (selectedIndex == 1) {
                final property = Property.ApartmentData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PropertyDetailsScreen(
                                property: property,
                              )),
                    );
                    print(index);
                  },
                  child: PropertyCard(property: property),
                );
              } else if (selectedIndex == 2) {
                final property = Property.BnBData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PropertyDetailsScreen(
                                property: property,
                              )),
                    );
                    print(index);
                  },
                  child: PropertyCard(property: property),
                );
              } else if (selectedIndex == 3) {
                final property = Property.VillaData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PropertyDetailsScreen(
                                property: property,
                              )),
                    );
                    print(index);
                  },
                  child: PropertyCard(property: property),
                );
              } else if (selectedIndex == 4) {
                final property = Property.resortData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PropertyDetailsScreen(
                                property: property,
                              )),
                    );
                    print(index);
                  },
                  child: PropertyCard(property: property),
                );
              }
            },
          ),
        )
      ],
    );
  }
}
