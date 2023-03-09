import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';
import 'package:readmore/readmore.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:youth_app/providers/pro_urgent.dart';

class UrgentHelpItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Text(
                'In case of urgent help, the following services will help you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: Dummy_urgent.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (ctx) {
                        return Container(
                          width: mediaQueryData.size.width * 0.99,
                          height: mediaQueryData.size.height / 1.9,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: mediaQueryData.size.width * 99,
                                  height: mediaQueryData.size.height / 2.3,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 255, 255, 255),
                                        Color.fromARGB(255, 255, 255, 255),
                                        Color.fromARGB(255, 255, 255, 255),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 14,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    Dummy_urgent[index].imageUrl,
                                    height: 120.0,
                                    width: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      Dummy_urgent[index].title,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: mediaQueryData.size.width * 0.85,
                                      child: Text(
                                        Dummy_urgent[index].subtitle,
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: 300,
                                      child: Text(
                                        'Contacts Details',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            Dummy_urgent[index].imageUrl,
                            height: 120.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Dummy_urgent[index].title,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.0),
                              ExpandableText(
                                Dummy_urgent[index].subtitle,
                                expandText: 'show more',
                                collapseText: 'show less',
                                maxLines: 2,
                                linkColor: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//                   margin: EdgeInsets.all(2),
//                   child: ListTile(
//                     dense: true,
//                     minVerticalPadding: 1,
//                     contentPadding: EdgeInsets.zero,
//                     visualDensity: VisualDensity(horizontal: 0, vertical: 4),
//                     title: Text(Dummy_urgent[index].title),
//                     subtitle: ExpandableText(
//                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
//                       expandText: 'show more',
//                       collapseText: 'show less',
//                       maxLines: 3,
//                       linkColor: Colors.blue,
//                       onLinkTap: () {
//                         showModalBottomSheet(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return Container(
//                               height: 200,
//                               child: Center(
//                                 child: Text('Bottom Sheet'),
//                               ),
//                             );
//                           },
//                         );
//                       },
//                     ),
//                     leading: Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(Dummy_urgent[index].imageUrl),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );