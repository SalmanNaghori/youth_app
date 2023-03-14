//urgent help item screen

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class UrgentHelpItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String image;
  final Uri email;
  final Uri phone;
  final Uri website;

  UrgentHelpItem({
    required this.id,
    required this.title,
    required this.description,
    required this.email,
    required this.image,
    required this.phone,
    required this.website,
  });
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;
    return Container(
        margin: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return isLandscape
                      ? Container(
                          width: mediaQuery.size.width * 0.99,
                          height: mediaQuery.size.height / 1.9,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: mediaQuery.size.width * 0.99,
                                  height: mediaQuery.size.height / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(10.0),
                                        topRight: const Radius.circular(10.0)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 255, 255, 255),
                                        Color.fromARGB(255, 255, 255, 255),
                                        Color.fromARGB(255, 255, 255, 255),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 14,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    image,
                                    width: 90,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 120,
                                child: Column(
                                  children: [
                                    Text(
                                      title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: mediaQuery.size.width * 0.85,
                                      // margin: EdgeInsets.all(10),
                                      child: Text(
                                        description,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      width: 300,
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        'Contact Details',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Email:"),
                                              InkWell(
                                                onTap: _sendingMails,
                                                child: Text(
                                                  '$email',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text('Phone:'),
                                              InkWell(
                                                onTap: _makingPhoneCall,
                                                child: Text(
                                                  '$phone',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text('Website:'),
                                              InkWell(
                                                onTap: _launchURLBrowser,
                                                child: Text(
                                                  '$website',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : show(context);
                });
          },
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    image,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      ExpandableText(
                        description,
                        expandText: 'read more',
                        collapseText: 'read less',
                        maxLines: 3,
                        linkColor: Colors.blue,
                        // onLinkTap: () {
                        //   showModalBottomSheet(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return _showbottom();
                        //   },
                        //   );
                        // },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget show(context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: mediaQuery.size.width * 0.99,
      height: mediaQuery.size.height / 1.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: mediaQuery.size.width * 0.99,
              height: mediaQuery.size.height / 2.3,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 14,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                image,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: mediaQuery.size.width * 0.85,
                  // margin: EdgeInsets.all(10),
                  child: Text(
                    description,
                    textAlign: TextAlign.justify,
                    textScaleFactor: 1.0,
                    style: TextStyle(
                        fontSize: 18, wordSpacing: 0.1, letterSpacing: 0.5),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: mediaQuery.size.width * 0.85,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Contact Details',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width * 0.85,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("Email:"),
                          ),
                          InkWell(
                            onTap: _sendingMails,
                            child: Text(
                              '$email',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text('Phone:'),
                          ),
                          InkWell(
                            onTap: _makingPhoneCall,
                            child: Text(
                              '$phone',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text('Website:'),
                          ),
                          InkWell(
                            onTap: _launchURLBrowser,
                            child: Text(
                              '$website',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendingMails() async {
    String emaila = '$email';
    String subject = 'My email subject';
    String body = 'My email body';

    final Uri params = Uri(
      scheme: 'mailto',
      path: emaila,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not launch email';
    }
  }

  Future<void> _makingPhoneCall() async {
    String telephoneNumber = '$email';
    final Uri telephoneUrl = Uri.parse("tel:$telephoneNumber");
    if (await canLaunchUrl(telephoneUrl)) {
      await launchUrl(telephoneUrl);
    } else {
      throw 'Could not launch $telephoneUrl';
    }
  }

  Future<void> _launchURLBrowser() async {
    String url = '$website';
    final Uri webUrl = Uri.parse(url);
    if (await canLaunchUrl(webUrl)) {
      await launchUrl(webUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
