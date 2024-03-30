import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Property extends Equatable {
  final String id;
  final String description;
  final String propertyType;
  final String roomType;
  final double pricePerNight;
  final String country;
  final String city;
  final int maxGuests;
  final List<String> amenities;
  final String mainPhotoUrl;
  final List<String> photoUrls;

  const Property({
    required this.id,
    required this.description,
    required this.propertyType,
    required this.roomType,
    required this.pricePerNight,
    required this.country,
    required this.city,
    required this.maxGuests,
    required this.amenities,
    required this.mainPhotoUrl,
    required this.photoUrls,
  });

  Property copyWith({
    String? id,
    String? description,
    String? propertyType,
    String? roomType,
    double? pricePerNight,
    String? country,
    String? city,
    int? maxGuests,
    List<String>? amenities,
    String? mainPhotoUrl,
    List<String>? photoUrls,
  }) {
    return Property(
      id: id ?? this.id,
      description: description ?? this.description,
      propertyType: propertyType ?? this.propertyType,
      roomType: roomType ?? this.roomType,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      country: country ?? this.country,
      city: city ?? this.city,
      maxGuests: maxGuests ?? this.maxGuests,
      amenities: amenities ?? this.amenities,
      mainPhotoUrl: mainPhotoUrl ?? this.mainPhotoUrl,
      photoUrls: photoUrls ?? this.photoUrls,
    );
  }

  @override
  List<Object?> get props => [
        id,
        description,
        propertyType,
        roomType,
        pricePerNight,
        country,
        city,
        maxGuests,
        amenities,
        mainPhotoUrl,
        photoUrls
      ];

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'] ?? const Uuid().v4(),
      description: json['description'] ?? '',
      propertyType: json['propertyType'] ?? '',
      roomType: json['roomType'] ?? '',
      pricePerNight: json['pricePerNight'] ?? 0.0,
      country: json['country'] ?? '',
      city: json['city'] ?? '',
      maxGuests: json['maxGuests'] ?? 0,
      amenities:
          json['amenities'] != null ? List<String>.from(json['amenities']) : [],
      mainPhotoUrl: json['mainPhotoUrl'] ??
          'https://source.unsplash.com/random/?property',
      photoUrls:
          json['photoUrls'] != null ? List<String>.from(json['photoUrls']) : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'propertyType': propertyType,
      'roomType': roomType,
      'pricePerNight': pricePerNight,
      'country': country,
      'city': city,
      'maxGuests': maxGuests,
      'amenities': amenities,
      'mainPhotoUrl': mainPhotoUrl,
      'photoUrls': photoUrls,
    };
  }

  static List<Property> HotelData = [
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful place close to Liverpool football club',
      propertyType: 'Hotel',
      roomType: 'Entire place',
      pricePerNight: 220.0,
      country: 'England',
      city: 'Liverpool',
      maxGuests: 6,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl:
          'https://images.unsplash.com/photo-1591825729269-caeb344f6df2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Qm5ifHx8fHx8MTcxMTc5Njg0Nw&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      photoUrls: [
        'https://images.unsplash.com/photo-1591825729269-caeb344f6df2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Qm5ifHx8fHx8MTcxMTc5Njg0Nw&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1610178167104-488495443e01?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExNzk2NjE3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1562438668-bcf0ca6578f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE3OTY4MjI&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'
      ],
    ),
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful place close to Manchester university',
      propertyType: 'Hotel',
      roomType: 'Entire place',
      pricePerNight: 300.0,
      country: 'England',
      city: 'Manchester',
      maxGuests: 4,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?apartment',
      photoUrls: [
        'https://source.unsplash.com/random/?apartment',
        'https://images.unsplash.com/photo-1612121500007-b067f455724c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bGl2aW5ncm9vbXx8fHx8fDE3MTE3OTcwODI&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1598928636135-d146006ff4be?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE3OTY5MjM&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1595428774223-ef52624120d2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExNzk2OTY1&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'
      ],
    ),
  ];

  static List<Property> ApartmentData = [
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful apartment in the heart of the city',
      propertyType: 'Apartment',
      roomType: 'Entire place',
      pricePerNight: 100.0,
      country: 'Spain',
      city: 'Barcelona',
      maxGuests: 4,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl:
          'https://images.unsplash.com/photo-1629042306558-7d1e15cc02fa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YXBhcnRtZW50fHx8fHx8MTcxMTc5NzA1NA&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      photoUrls: [
        'https://images.unsplash.com/photo-1629042306558-7d1e15cc02fa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YXBhcnRtZW50fHx8fHx8MTcxMTc5NzA1NA&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://source.unsplash.com/random/?livingroom',
        'https://images.unsplash.com/photo-1600494603989-9650cf6ddd3d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE3OTY4NjQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://source.unsplash.com/random/?bathroom',
      ],
    ),
  ];

  static List<Property> BnBData = [
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful Romm with private pool',
      propertyType: 'BnB',
      roomType: 'Entire place',
      pricePerNight: 180.0,
      country: 'England',
      city: 'London',
      maxGuests: 2,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?hotel',
      photoUrls: [
        'https://source.unsplash.com/random/?pool',
        'https://images.unsplash.com/photo-1602503206634-9a39fccff9b4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE3OTY5MjQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1595515422979-5ea88d3954a0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExNzk2OTY2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      ],
    ),
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful Room',
      propertyType: 'BnB',
      roomType: 'Entire place',
      pricePerNight: 180.0,
      country: 'England',
      city: 'London',
      maxGuests: 2,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?hotel',
      photoUrls: [
        'https://source.unsplash.com/random/?hotel',
        'https://images.unsplash.com/photo-1599202937077-3f7cdc53f2e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE4MDE2MDE&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1587527901949-ab0341697c1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExODAxNjEz&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      ],
    ),
    Property(
      id: const Uuid().v4(),
      description:
          'Beautiful apartment in the heart of the city transportation nearly',
      propertyType: 'BnB',
      roomType: 'Entire place',
      pricePerNight: 280.0,
      country: 'France',
      city: 'Paris',
      maxGuests: 4,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?resort',
      photoUrls: [
        'https://source.unsplash.com/random/?resort',
        'https://images.unsplash.com/photo-1594873672629-61079318a5fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExNzk2OTY3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1609766975297-92f28e2db184?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE3OTY4Nzk&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'
      ],
    ),
  ];

  static List<Property> VillaData = [
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful villa with private pool',
      propertyType: 'Villa',
      roomType: 'Entire place',
      pricePerNight: 200.0,
      country: 'Spain',
      city: 'Barcelona',
      maxGuests: 8,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl: 'https://source.unsplash.com/random/?villa',
      photoUrls: [
        'https://source.unsplash.com/random/?villa',
        'https://images.unsplash.com/photo-1551491603-7d38b9e605f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9vbHx8fHx8fDE3MTE3OTcxMDQ&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1566665797739-1674de7a421a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE3OTY4NjY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1608501200359-354b01a203fa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExNzk2OTcx&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      ],
    ),
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful villa',
      propertyType: 'Villa',
      roomType: 'Entire place',
      pricePerNight: 300.0,
      country: 'Spain',
      city: 'Barcelona',
      maxGuests: 8,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl:
          'https://images.unsplash.com/photo-1604771870038-6b1d99e7bae8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8dmlsbGF8fHx8fHwxNzExODAxNDMz&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      photoUrls: [
        'https://images.unsplash.com/photo-1604771870038-6b1d99e7bae8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8dmlsbGF8fHx8fHwxNzExODAxNDMz&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1586836930332-6a1e2cb08e78?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE4MDE0NTI&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1642755622841-ca96824ebe9a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExODAxNDk4&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      ],
    ),
  ];

  static List<Property> resortData = [
    Property(
      id: const Uuid().v4(),
      description: 'Beautiful place close to Liverpool football club',
      propertyType: 'resort',
      roomType: 'Entire place',
      pricePerNight: 220.0,
      country: 'England',
      city: 'Liverpool',
      maxGuests: 6,
      amenities: ['Wi-Fi', 'Kitchen', 'Air conditioning'],
      mainPhotoUrl:
          'https://images.unsplash.com/photo-1570133435807-5feefeb2d196?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVzb3J0fHx8fHx8MTcxMTgwMjY0NA&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
      photoUrls: [
        'https://images.unsplash.com/photo-1570133435807-5feefeb2d196?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVzb3J0fHx8fHx8MTcxMTgwMjY0NA&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1600210491741-a69593e43133?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmVkcm9vbXx8fHx8fDE3MTE4MDI2MjA&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080',
        'https://images.unsplash.com/photo-1609280069865-62f178e2c237?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmF0aHJvb218fHx8fHwxNzExODAyNTk3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'
      ],
    ),
  ];
}
