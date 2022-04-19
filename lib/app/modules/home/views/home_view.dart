import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:mona/app/theme/style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    newTopic(){
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: secondaryColor,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: "Add discussion..",
          ),
        ),
      );
    }

    attributeText(int data) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          data == 3
              ? SizedBox(
                  width: 0,
                )
              : Icon(data == 1 ? Icons.chat_outlined : Icons.thumb_up,
                  size: 16),
          SizedBox(
            width: 3,
          ),
          Text(
            data == 1 ? "Response : " : (data == 2 ? "Likes : " : "Anonymous"),
            style: attributeTextStyle,
          ),
          // data != 3
          //     ? SizedBox(
          //         width: 0,
          //       )
          //     : FlutterSwitch(value: value, onToggle: (val){})
        ],
      );
    }

    customCard() {
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: secondaryColor,
        child: Padding(
          padding: const EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Status : ",
                style: attributeTextStyle,
              ),
              Row(
                children: [
                  Text(
                    "Title",
                    style: titleTextStyle,
                  ),
                  Spacer(),
                  Icon(Icons.share),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  attributeText(1),
                  attributeText(2),
                  attributeText(3),
                ],
              ),
            ],
          ),
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
            padding: const EdgeInsets.all(defaultMargin),
            child: Icon(Icons.person_rounded),
          )
        ],
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultMargin),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), //shadow color
                    blurRadius: 7, // shadow blur radius
                    offset: const Offset(1, 2), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    hintText: "Search title...",
                    fillColor: secondaryColor),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            customCard(),
            newTopic(),
          ],
        ),
      ),
    );
  }
}
