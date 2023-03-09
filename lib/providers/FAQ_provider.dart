// ignore_for_file: public_member_api_docs, sort_constructors_first
//model for FAQs title and subtitle
class Item_FAQ {
  String headerValue;
  String expandedValue;
  bool isExpanded;
  Item_FAQ({
    required this.headerValue,
    required this.expandedValue,
    this.isExpanded = false,
  });
}
