import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:video_player/video_player.dart';
import 'package:youth_app/providers/pro_agency.dart';

import '../screens/agancy_detail_screen.dart';

class AgencyItem extends StatefulWidget {
  final String id;
  final String title;
  final String image;
  final String image2;
  final String url;

  const AgencyItem({
    required this.id,
    required this.title,
    required this.image,
    required this.image2,
    required this.url,
  });

  @override
  State<AgencyItem> createState() => _AgencyItemState();
}

class _AgencyItemState extends State<AgencyItem> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  // final List<Agency> list;
  late VideoPlayerController _videoPlayerController;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _loadVideo();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  void _loadVideo() {
    final url = Provider.of<Agency>(context, listen: false).url;
    _videoPlayerController = VideoPlayerController.network(url)
      ..initialize().then(
        (_) {
          setState(() {});
        },
      );
  }

  void _playPauseVideo() {
    setState(() {
      _isPlaying = !_isPlaying;
      if (_isPlaying) {
        _videoPlayerController.play();
      } else {
        _videoPlayerController.pause();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = screenSize.width < 600;
    final agencyitem = Provider.of<Agency>(context);

    return InkWell(
      child: Container(
        // margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context, MaterialPageRoute(builder: (context) => AgencyDetailScreen(agencyitem))
                // );
                Navigator.of(context).pushNamed(AgencyDetailScreen.routeName,
                    arguments: agencyitem.id);
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         child: AgencyDetailScreen(),
                //         type: PageTransitionType.fade));
              },
              child: Container(
                height: 175,
                width: double.infinity,
                // margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Stack(
                    children: [
                      PageView(
                        controller: controller,
                        onPageChanged: (int page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(agencyitem.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _playPauseVideo,
                            child: AspectRatio(
                              aspectRatio:
                                  _videoPlayerController.value.aspectRatio,
                              child: Stack(
                                children: [
                                  VideoPlayer(_videoPlayerController),
                                  if (!_isPlaying)
                                    Center(
                                      child: isSmallScreen
                                          ? Image.asset(
                                              'assets/images/VideoPlaybtn.png')
                                          : Image.asset(
                                              'assets/images/VideoPlaybtn@3x.png'),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(agencyitem.image2),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: DotsIndicator(
                          dotsCount: 3,
                          position: currentPage.toDouble(),
                          decorator: DotsDecorator(
                            color: Colors.grey.shade400,
                            activeColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ClipRRect(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(7),
              //   ),
              //   child: Image.network(
              //     image,
              //     height: 170,
              //     width: double.infinity,
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.orange.shade50,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
