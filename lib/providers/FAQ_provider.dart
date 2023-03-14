// ignore_for_file: public_member_api_docs, sort_constructors_first
//model for FAQs title and subtitle
class FAQ_list {
  String question;
  String answer;
  bool isExpanded;
  FAQ_list({
    required this.question,
    required this.answer,
    this.isExpanded = false,
  });
}

var faqs_list = [
  FAQ_list(
    question:
        'The question will be shown here. Upon clicking it, the answer will be shown.',
    answer:
        'Lorem ipsum is a dummy text. This will be replaced with the actual text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
  ),
  FAQ_list(
    question:
        'The next question will be shown here.Upon clicking it, the answer will be shown.',
    answer:
        'Lorem ipsum is a dummy text. This will be replaced with the actual text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
  ),
  // FAQ_list(
  //   headerValue: 'Item 3',
  //   expandedValue: 'Details of item 3',
  // ),
];
