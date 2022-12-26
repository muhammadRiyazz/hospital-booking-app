import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/User%20pages/screen%20notification/screen_notification.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../screen search/screen_search.dart';

class TitlePart extends StatelessWidget {
  const TitlePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SimpleShadow(
              opacity: 0.3,
              child: Container(
                decoration:
                    const BoxDecoration(color: mWhite, borderRadius: radius15),
                padding: const EdgeInsets.all(4),
                child: const Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Color.fromARGB(255, 98, 96, 96),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hii RIYAZ....👋",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Find Your Doctor",
                style: TextStyle(fontSize: 15, color: mGrey),
              )
            ],
          ),
          const Spacer(),
          NotificationButton(),
          wsizedbox10,
          SearchButton(),
        ]);
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ScreenNotification();
            },
          ));
        },
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: radius10,
            color: mgreyb,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_active_outlined,
              size: 30,
              color: cmain,
            ),
          ),
        ),
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ScreenSearch();
            },
          ));
        },
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: radius10,
            color: mgreyb,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30,
              color: cmain,
            ),
          ),
        ),
      ),
    );
  }
}
