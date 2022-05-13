
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/routes/auto_route.gr.dart';
import 'package:password_manager/screens/components/bottom_bar.dart';
import 'package:password_manager/screens/components/social_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        // title: const Text("Pm"),
        title: Image.asset('assets/images/title.png',),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const AddSocialLink());
                      },
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(Icons.remove)
                    ),
                  ],
                )
            ),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      children: const [
                        Divider(),
                        SocialCard(socialName: "twitter.com",
                          socialLastEdit: "5 days ago",
                          socialLastCopy: "4 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "facebook.com",
                          socialLastEdit: "45 days ago",
                          socialLastCopy: "20 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "lichess.org",
                          socialLastEdit: "35 days ago",
                          socialLastCopy: "30 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "youtube.com",
                          socialLastEdit: "A year ago",
                          socialLastCopy: "40 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "twitter.com",
                          socialLastEdit: "345 days ago",
                          socialLastCopy: "4 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "twitter.com",
                          socialLastEdit: "345 days ago",
                          socialLastCopy: "4 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "twitter.com",
                            socialLastEdit: "345 days ago",
                            socialLastCopy: "4 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "twitter.com",
                            socialLastEdit: "345 days ago",
                            socialLastCopy: "4 mins ago",
                        ),
                        Divider(),
                        SocialCard(socialName: "twitter.com",
                            socialLastEdit: "345 days ago",
                            socialLastCopy: "4 mins ago",
                        ),
                        Divider(),
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(navCurrentScreen: 1,)
      );
  }
}
