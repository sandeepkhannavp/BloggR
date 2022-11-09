import 'package:flutter/material.dart';
import 'package:streamz/screens/all.dart';
import 'package:streamz/utilities/image_card.dart';
import '../utilities/constants.dart';

class PostBox extends StatefulWidget {
  const PostBox({Key? key}) : super(key: key);

  @override
  State<PostBox> createState() => _PostBoxState();
}

class _PostBoxState extends State<PostBox> {
  final num = rand.nextInt(7);
  int filled = 0;
  Icon heartIcon = const Icon(
    Icons.favorite_outline_rounded,
    color: Colors.white,
    size: 35,
  );

  void updateHeartColor() {
    if (filled == 0) {
      heartIcon = filledHeartIcon;
      filled = 1;
    } else {
      heartIcon = hollowHeartIcon;
      filled = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      unames[num][1],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: Text(
                      unames[num][0],
                      style: textStyle5,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => UserPage(
                            url: unames[num][1],
                            uname: unames[num][0],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    GestureDetector(
                      child: ImageCard(
                        url: urls[rand.nextInt(5)],
                        height: 200,
                        width: 340,
                      ),
                      onTap: (() {
                        setState(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PostPage(),
                            ),
                          );
                        });
                      }),
                      onDoubleTap: (() {
                        setState(() {
                          updateHeartColor();
                        });
                      }),
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: heartIcon,
                  onTap: (() {
                    setState(() {
                      updateHeartColor();
                    });
                  }),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                  onTap: (() {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CommentPage(
                            data: [
                              unames[num][0],
                              caption,
                            ],
                            colors: colors[rand.nextInt(4)],
                          ),
                        ),
                      );
                    });
                  }),
                )
              ],
            ),
            const SizedBox(
              height: 5,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                caption,
                style: textStyle2.copyWith(
                  color: Colors.black,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        )
      ],
    );
  }
}
