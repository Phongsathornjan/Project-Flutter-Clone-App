import 'package:airbnb_clone/shared/widgets/Property_datail_card.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class PropertyDetailsScreen extends StatefulWidget {
  final Property property;

  const PropertyDetailsScreen({required this.property});

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          child: PropertyDetailCard(property: widget.property),
          // ใช้ widget.property เพื่อเข้าถึง property ที่รับมาจาก constructor
        ),
      ),
    );
  }
}
