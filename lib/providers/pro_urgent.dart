class Urgent {
  final String id;
  final String title;
  final String description;
  final String image;
  final Uri email;
  final Uri phone;
  final Uri website;

  Urgent({
    required this.id,
    required this.title,
    required this.description,
    required this.email,
    required this.image,
    required this.phone,
    required this.website,
  });
}

var urgent = [
  Urgent(
    id: 'A1',
    title: "Aware",
    description:
        "Aware provides a range of services including a telephone and email support services.",
    email: Uri.parse("supportmail@aware.ie"),
    image:
        "https://images.unsplash.com/photo-1584483456442-b0bfd23f20fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YWJ1c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://aware.ie"),
  ),
  Urgent(
    id: 'A2',
    title: "Samaritans",
    description:
        "Samaritans are available day or night,\n\n for anyone who's struggling to cope, who needs someone to isten without judgement or pressure.",
    email: Uri.parse("jo@samaritans.ie"),
    image:
        "https://media.istockphoto.com/id/657425426/photo/guy-at-the-pub.jpg?s=612x612&w=0&k=20&c=RN52QkOvP3aG6QTbCXRSU9TBkKcQwT4frIRD2LODK4Q=",
    phone: Uri.parse("0456321987"),
    website: Uri.parse("http://samaritans.org/ireland"),
  ),
  Urgent(
    id: 'A3',
    title: "SOSAD Ireland",
    description:
        "SOSAD offer support and services for people who are struggling with suicidal ideation, self harming ,depression.",
    email: Uri.parse("this.is.tijani@gmail.com"),
    image:
        "https://images.unsplash.com/photo-1546957222-39a2f31d3644?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8QnVsbHlpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://sosadireland.ie"),
  ),
  Urgent(
    id: 'A4',
    title: "Pieta House",
    description:
        "Samaritans are available day or night, for anyone who's struggling to cope, who needs someone to isten without judgement or pressure.",
    email: Uri.parse("mary@pieta.ie"),
    image:
        "https://media.istockphoto.com/id/1303248488/photo/black-color-figurine-among-crowd-white-people-background-social-lifestyle-and-business.jpg?b=1&s=170667a&w=0&k=20&c=tPx61qhKxh6DjcKq3Nv8kK9p80s8bgcPLtyQkxckT54=",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("https://www.pieta.ie/"),
  ),
  Urgent(
    id: 'A5',
    title: "Childline",
    description:
        "Samaritans are available day or night, for anyone who's struggling to cope, who needs someone to isten without judgement or pressure.",
    email: Uri.parse("info@childline.ie"),
    image:
        "https://images.unsplash.com/photo-1620065692460-d8e110a47ffb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8RHJ1Z3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    phone: Uri.parse("0123456789"),
    website: Uri.parse("http://childline.ie"),
  ),
];
