import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../providers/FAQ_provider.dart' as Faqs;

class FaqItem extends StatefulWidget {
  final Faqs.FAQ_list faq;
  FaqItem({required this.faq});

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    final Widget up = Icon(
      Icons.keyboard_arrow_up_sharp,
      size: 25,
    );
    final Widget down = Icon(
      Icons.keyboard_arrow_down_sharp,
      size: 25,
    );

    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
            child: ListTile(
              title: Text(
                widget.faq.question,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'OpenSansSemiBold',
                  fontWeight: FontWeight.w500,
                  color:
                      // Color(0x3f7ccd).withOpacity(1)
                      Theme.of(context).primaryColor,
                ),
              ),
              trailing: IconButton(
                padding: EdgeInsets.only(left: 20),
                iconSize: 12,
                color: Color(0x545454).withOpacity(1),
                icon: (_expanded ? up : down),
                onPressed: () {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
              ),
            ),
          ),
          if (_expanded)
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 24, bottom: 8, right: 28),
              child: Text(
                widget.faq.answer,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x545454).withOpacity(1),
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          Divider(),
        ],
      ),
    );
  }
}
