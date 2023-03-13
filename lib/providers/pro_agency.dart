import 'package:flutter/material.dart';

class Agency with ChangeNotifier {
  final String id;
  final String title;
  final String Description;
  final String image;
  final String image2;
  final String url;
  final Uri email;
  final Uri phone;
  final Uri website;
  final String Address;
  final String mapimage;
  final List<String> Age;
  final List<String> Supports;
  final List<String> Tags;

  Agency({
    required this.id,
    required this.title,
    required this.Description,
    required this.image,
    required this.image2,
    required this.url,
    required this.email,
    required this.phone,
    required this.website,
    required this.Address,
    required this.Age,
    required this.mapimage,
    required this.Supports,
    required this.Tags,
  });
}

class Agencies with ChangeNotifier {
  List<Agency> _agencies = [
    Agency(
        id: 'i1',
        title: 'HSE Psychology Service (Dublin South East)',
        image:
            'https://images.unsplash.com/photo-1584483456442-b0bfd23f20fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YWJ1c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        image2:
            'https://media.istockphoto.com/id/657425426/photo/guy-at-the-pub.jpg?s=612x612&w=0&k=20&c=RN52QkOvP3aG6QTbCXRSU9TBkKcQwT4frIRD2LODK4Q=',
        url:
            'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
        Description:
            'HSE Psychology Service provides services in the community to support children and families.',
        email: Uri.parse("info@hsepsychology.com"),
        phone: Uri.parse('04771398'),
        website: Uri.parse('https://hsepsychology.com/'),
        Address: 'Oriel Way, Monaghan Town',
        mapimage:
            'https://www.google.com/maps/d/u/0/thumbnail?mid=15iSzmSNNN38auN-MJgdnfq8SQYk&hl=en',
        Age: [
          '10-17 yrs',
          '18-25 yrs'
        ],
        Supports: [
          'Happy',
          'Not Sure',
          'Sad',
          'Okay',
          'terrible',
          'Good',
        ],
        Tags: [
          'Abuse',
          'Addiction',
          'Alcohol',
          'Anxiety',
          'Body Image',
          'Dating',
          'Contraception',
        ]),
    Agency(
      id: 'i2',
      title: 'Balally Family Resource Centre',
      image:
          'https://images.unsplash.com/photo-1546957222-39a2f31d3644?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8QnVsbHlpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      image2:
          'https://media.istockphoto.com/id/1303248488/photo/black-color-figurine-among-crowd-white-people-background-social-lifestyle-and-business.jpg?b=1&s=170667a&w=0&k=20&c=tPx61qhKxh6DjcKq3Nv8kK9p80s8bgcPLtyQkxckT54=',
      url: 'https://www.fluttercampus.com/video.mp4',
      Description:
          'Balally Family Resource Centre provides resources in the community to support children and families.',
      email: Uri.parse("info@balally.com"),
      phone: Uri.parse('0494364065'),
      website: Uri.parse('https://balallycenter.com'),
      Address: 'Main St, Portaliff Glebe, Killashandra, Co.Cavan',
      mapimage:
          'https://osm.cylex-international.com/osm/staticmaplite/staticmap.php?center=53.2933326,-6.2754989&zoom=15&size=xy&maptype=tm&markers=53.2933326,-6.2754989,marker-34',
      Age: ['10-17 yrs', '18-25 yrs'],
      Supports: [
        'Happy',
        'Not Sure',
        'Sad',
        'Okay',
        'terrible',
        'Good',
      ],
      Tags: [
        'Abuse',
        'Addiction',
        'Alcohol',
        'Anxiety',
        'Body Image',
        'Dating',
        'Contraception',
      ],
    ),
  ];

  findById(String id) {
    return _agencies.firstWhere((prod) => prod.id == id);
  }

  List<Agency> get items {
    return [..._agencies];
  }

  // Agencies(this._agencies);
}
