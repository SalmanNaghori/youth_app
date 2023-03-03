// model for agency items

class AgencyPage {
  final String id;
  final String title;

  final String imageUrl;

  AgencyPage({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
}

final Dummy_agency = [
  AgencyPage(
    id: 'm1',
    title: 'HSE Psychology Service (Dublin South East)',
    imageUrl:
        'https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8eW91dGh8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ),
  AgencyPage(
    id: 'm2',
    title: 'Balally Family Resource Centre',
    imageUrl:
        'https://images.unsplash.com/photo-1593896385987-16bcbf9451e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHlvdXRofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
  AgencyPage(
    id: 'm3',
    title: 'Balally Family Resource Centre',
    imageUrl:
        'https://images.unsplash.com/photo-1593896385987-16bcbf9451e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHlvdXRofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
];
