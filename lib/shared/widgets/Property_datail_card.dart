import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class PropertyDetailCard extends StatefulWidget {
  final Property property;

  const PropertyDetailCard({Key? key, required this.property})
      : super(key: key);

  @override
  State<PropertyDetailCard> createState() => _PropertyCardState();
}

class _PropertyCardState extends State<PropertyDetailCard> {
  final controller = PageController();
  var currentPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: widget.property.photoUrls.map((imageUrl) {
                  return Image.network(imageUrl, fit: BoxFit.cover);
                }).toList(),
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 0.0,
              right: 0.0,
              child: DotsIndicator(
                dotsCount: widget.property.photoUrls.length,
                position: currentPage,
                onTap: (index) {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                decorator: DotsDecorator(
                  color: colorScheme.onSecondary,
                  activeColor: colorScheme.secondary,
                  size: const Size.square(8.0),
                  activeSize: const Size(12.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.property.country}, ${widget.property.city}',
                style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                widget.property.description,
              ),
              const SizedBox(height: 8.0),
              Text(
                widget.property.amenities.join(', '),
              ),
              const SizedBox(height: 8.0),
              Text(
                "ประเภทห้อง : " + widget.property.roomType,
              ),
              const SizedBox(height: 8.0),
              Text("ราคาต่อ 1 คืน : " +
                  widget.property.pricePerNight.toString() +
                  " euro"),
              const SizedBox(height: 8.0),
              Text("จำนวนแขก : " + widget.property.maxGuests.toString()),
            ],
          ),
        ),
      ],
    );
  }
}
