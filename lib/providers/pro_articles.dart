class Article {
  final String id;
  final String title;
  final String image;

  Article({
    required this.id,
    required this.title,
    required this.image,
  });
}

var article = [
  Article(
    id: 'a1',
    title: 'Abuse',
    image:
        'https://www.wspecoprojects.org/wp/wp-content/uploads/2021/11/wsp-leaf-mulch.png',
  ),
  Article(
    id: 'a2',
    title: 'Alcohol',
    image:
        'https://www.wspecoprojects.org/wp/wp-content/uploads/2021/11/wsp-gbbc-2018-1536x1152.jpg',
  ),
  Article(
    id: 'a3',
    title: 'Bullying',
    image:
        'https://thumbs.dreamstime.com/z/washington-square-park-manhattan-covid-coronavirus-pandemic-new-york-city-may-view-historic-people-wearing-184107746.jpg',
  ),
  Article(
    id: 'a4',
    title: 'Discrimination',
    image: 'http://www.libpng.org/pub/png/img_png/MagnoliaAlpha.png',
  ),
  Article(
    id: 'a5',
    title: 'Drugs',
    image: 'https://mpm.ph/wp-content/uploads/2013/05/corporate-documents.jpg',
  ),
];
