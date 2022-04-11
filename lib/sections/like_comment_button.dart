import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class LikeCommentButton extends StatefulWidget {
  @override
  State<LikeCommentButton> createState() => _LikeCommentButtonState();
}

class _LikeCommentButtonState extends State<LikeCommentButton> {
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {
              setState(() {
                if (isButtonClicked == false) {
                  isButtonClicked = true;
                } else {
                  isButtonClicked = false;
                }
              });
            },
            icon: Icon(
              Icons.thumb_up_outlined,
              color: !isButtonClicked ? Colors.grey[500] : Colors.blueAccent,
            ),
            label: Text(
              'Like',
              style: TextStyle(
                color: !isButtonClicked ? Colors.grey[500] : Colors.blueAccent,
              ),
            ),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
            endIndent: 2,
          ),
          TextButton.icon(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (ctx) {
                    return Container(
                        padding: const EdgeInsets.only(top: 40,bottom: 15),
                        height: mHeight,
                        width: mWidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Loading...'),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 60,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(color: Colors.grey))),
                              child: ListTile(
                                leading: Avatar(image: messi),
                                title: TextFormField(
                                  autofocus: true,
                                  decoration: const InputDecoration(
                                    hintText: 'Type something...',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.send,
                                    color: Colors.blueAccent,
                                  ),
                                  iconSize: 30,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ));
                  });
            },
            icon: Icon(
              Icons.comment_outlined,
              color: Colors.grey[500],
            ),
            label: Text(
              'Comment',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextButton.icon(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (cntxt) {
                    var divider = Divider(thickness: 2,);
                    return Container(

                      child: Column(
                        children: [
                          const Divider(thickness: 20,),
                          shareMethods('Copy Link'),
                          divider,
                          shareMethods('WhatsApp'),
                          divider,
                          shareMethods('Instagram'),
                          divider,
                          shareMethods('Save to Folder'),
                          divider,
                          shareMethods('Others...')
                        ],
                      ),
                    );
                  });
            },
            icon: Icon(
              Icons.share,
              color: Colors.grey[500],
            ),
            label: Text(
              'Share',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox shareMethods(String name) {
    return SizedBox(
      height: 78,
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
