import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/style.dart';
import '../controllers/topic_controller.dart';

class TopicView extends GetView<TopicController> {
  @override
  Widget build(BuildContext context) {
    ideaCard([int like = 1]) {
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: secondaryColor,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 275,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscingLorem ipsum dolor sit amet, consectetur adipiscingLorem ipsum dolor sit amet, consectetur adipiscingLorem ipsum dolor sit amet, consectetur adipiscing',
                      maxLines: 10,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Rusli',
                    style: nameTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Icon(like == 1
                      ? Icons.thumb_up_alt
                      : Icons.thumb_up_alt_outlined),
                  Text(
                    like == 1 ? "100" : "0",
                    style: attributeTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Status : ",
                style: attributeTextStyle,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Title",
            style: titleTextStyle,
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sort by ",
                style: attributeTextStyle,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Likes ",
                        style: attributeTextStyle,
                      ),
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    groupCard() {
      return Column(
        children: [
          ideaCard(),
          ideaCard(),
          ideaCard(0),
        ],
      );
    }

    customListView() {
      return ListView(
        children: [
          header(),
          groupCard(),
        ],
      );
    }

    inputIdea() {
      return Container(
        color: Color(0xffCDCDCD),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 11, 0, 11),
                child: Card(
                  color: secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's on your mind??",
                        contentPadding: EdgeInsets.symmetric(horizontal: 14)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Card(
                  color: accentColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  )),
              onTap: () {},
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: accentColor,
          title: Text('Mona'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Icon(Icons.person_rounded),
            )
          ],
          centerTitle: false,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultMargin),
                child: customListView(),
              ),
              Align(alignment: Alignment.bottomLeft, child: inputIdea()),
            ],
          ),
        ));
  }
}
