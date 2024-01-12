import 'package:flutter/material.dart';
import 'package:prome/profilepages/advertisement/add_advertisement.dart';
import 'package:prome/profilepages/albums/album_screen.dart';
import 'package:prome/profilepages/blogs/blog_page.dart';
import 'package:prome/profilepages/boosted/boosted_tab.dart';
import 'package:prome/profilepages/common_things.dart';
import 'package:prome/profilepages/create_offers.dart';
import 'package:prome/profilepages/cronavirus.dart';
import 'package:prome/profilepages/following/following_page.dart';
import 'package:prome/profilepages/funding/funding.dart';
import 'package:prome/profilepages/games/my_games.dart';
import 'package:prome/profilepages/general_Account/general_account.dart';
import 'package:prome/profilepages/groups/explorer_groups.dart';
import 'package:prome/profilepages/images/my_image.dart';
import 'package:prome/profilepages/invite.dart';
import 'package:prome/profilepages/jobs/my_jobs.dart';
import 'package:prome/profilepages/market/market_place.dart';
import 'package:prome/profilepages/memories.dart';
import 'package:prome/profilepages/movies/movie.dart';
import 'package:prome/profilepages/my_info.dart';
import 'package:prome/profilepages/myearning/my_earning.dart';
import 'package:prome/profilepages/no.dart';
import 'package:prome/profilepages/pages/pages.dart';
import 'package:prome/profilepages/poke.dart';
import 'package:prome/profilepages/popular_posts.dart';
import 'package:prome/profilepages/privacy/privacy_policy.dart';
import 'package:prome/profilepages/videos/my_videos.dart';
import 'package:prome/screens/auth/login_screen.dart';
import 'package:prome/screens/favourite/add_favourite.dart';
import 'package:prome/screens/friends/freinds.dart';
import 'package:prome/profilepages/events/event_page.dart';
import 'package:prome/screens/pages/live_video.dart';
import 'package:prome/screens/profile_setup/setup_profile.dart';
import 'package:prome/utils/color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => SetUpProfile()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/pp.png",
                              height: 60,
                              width: 100,
                            ),
                            Text(
                              "My Profile",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See My Profile",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "0 Points",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0 Posts",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MyInfo()));
                  },
                  leading: Icon(
                    Icons.info,
                    color: Colors.purple,
                    size: 40,
                  ),
                  title: Text(
                    "Information",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Profile Information",
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/sp.png",
                        height: 40,
                      ),
                      title: Text(
                        "Messages",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Go and Chat with Friends and Groups",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => FollowingPage()));
                      },
                      leading: Icon(
                        Icons.follow_the_signs,
                        color: Colors.purple,
                        size: 40,
                      ),
                      title: Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Persons Who Follows You",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Poke()));
                      },
                      leading: Icon(
                        Icons.pin_invoke_rounded,
                        color: Colors.greenAccent,
                        size: 40,
                      ),
                      title: Text(
                        "Pokes",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "How many person pokes you",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => AlbumScreen()));
                      },
                      leading: Icon(
                        Icons.album,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      title: Text(
                        "Albums",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Memories in form of ablums",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MyImages()));
                      },
                      leading: Icon(
                        Icons.image,
                        color: Colors.red,
                        size: 40,
                      ),
                      title: Text(
                        "Images",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Your Daily Life Activity Images",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MyVideos()));
                      },
                      leading: Icon(
                        Icons.video_camera_front,
                        color: Colors.orangeAccent,
                        size: 40,
                      ),
                      title: Text(
                        "My Videos",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Collection of your videos",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => AddFavourite()));
                      },
                      leading: Icon(
                        Icons.save,
                        color: Colors.orange,
                        size: 40,
                      ),
                      title: Text(
                        "Saved Posts",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Here you see your all saved posts",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ExplorerGroups()));
                      },
                      leading: Icon(
                        Icons.group,
                        color: Colors.blueGrey,
                        size: 40,
                      ),
                      title: Text(
                        "Groups",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Here you can share your life experiences with other people of same interest",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Pages()));
                      },
                      leading: Icon(
                        Icons.pageview,
                        color: Colors.pink,
                        size: 40,
                      ),
                      title: Text(
                        "Pages",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Manage Your Pages",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => BlogPage()));
                      },
                      leading: Icon(
                        Icons.wrap_text,
                        color: Colors.red,
                        size: 40,
                      ),
                      title: Text(
                        "Blogs",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Manage and Write Blogs",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MarketPlace()));
                      },
                      title: Text(
                        "Market Palce",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.shop,
                        color: Colors.purpleAccent,
                        size: 40,
                      ),
                      subtitle: Text("Find Different Kind of Services"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Boosted()));
                      },
                      title: Text(
                        "Boosted",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.energy_savings_leaf,
                        color: Colors.blue,
                        size: 40,
                      ),
                      subtitle: Text("Boost Your Profile"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => PopularPost()));
                      },
                      leading: Icon(
                        Icons.podcasts,
                        color: Colors.deepPurple,
                        size: 40,
                      ),
                      title: Text(
                        "Popular Posts",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "See Popular Post",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => EventPage()));
                      },
                      leading: Icon(
                        Icons.event,
                        color: Colors.green,
                        size: 40,
                      ),
                      title: Text(
                        "Events",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "See and bookmark upcomming events",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => FriendsTab()));
                      },
                      title: Text(
                        "Find Friends",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                        size: 40,
                      ),
                      subtitle: Text("Find Friends in Prome World"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => OfferPage()));
                      },
                      title: Text(
                        "Offers",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.card_giftcard,
                        color: Colors.red,
                        size: 40,
                      ),
                      subtitle: Text("Review Differnt Offers for you"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Movies()));
                      },
                      leading: Icon(
                        Icons.movie,
                        color: Colors.deepOrangeAccent,
                        size: 40,
                      ),
                      title: Text(
                        "Movies",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Watch movies which you want",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => MyJobs()));
                      },
                      leading: Icon(
                        Icons.join_full,
                        color: Colors.yellow[100],
                        size: 40,
                      ),
                      title: Text(
                        "Jobs",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Find Jobs according your skill set",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => CommonThings()));
                      },
                      title: Text(
                        "Common Things",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.commute,
                        color: Colors.blue,
                        size: 40,
                      ),
                      subtitle: Text("Find Common Things in app"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Memories()));
                      },
                      title: Text(
                        "Memories",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.memory,
                        color: Colors.pinkAccent,
                        size: 40,
                      ),
                      subtitle: Text("View your old memories which you posted"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Funding()));
                      },
                      leading: Icon(
                        Icons.functions_rounded,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      title: Text(
                        "Funding",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Find funding according your requirement",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => MyGames()));
                      },
                      leading: Icon(
                        Icons.games,
                        color: Colors.purple[100],
                        size: 40,
                      ),
                      title: Text(
                        "Games",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Play different games available on platform",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => CronaVirus()));
                      },
                      title: Text(
                        "Corona Virus",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.vaccines,
                        color: Colors.blue,
                        size: 40,
                      ),
                      subtitle: Text("Tip regarding corona virus"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => LiveVideo()));
                      },
                      title: Text(
                        "Live Videos",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.live_tv,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      subtitle: Text("View live video into the app"),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Adverteisement()));
                      },
                      leading: Icon(
                        Icons.ads_click,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      title: Text(
                        "Advertising",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Advertise your expertise and much more",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Other Setting",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => GeneralAccount()));
                    },
                    leading: Icon(Icons.account_balance),
                    title: Text("General Account"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => PrivacyPolicy()));
                    },
                    leading: Icon(Icons.lock),
                    title: Text("Privacy"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Notiifications()));
                    },
                    leading: Icon(Icons.notifications),
                    title: Text("Notifications"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Invite()));
                    },
                    leading: Icon(Icons.attach_file),
                    title: Text("Invitation Links"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => MyInfo()));
                    },
                    leading: Icon(Icons.info),
                    title: Text("My Information"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => MyEarning()));
                    },
                    leading: Icon(Icons.payment),
                    title: Text("Earning"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  // ListTile(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (builder) => HelpSupport()));
                  //   },
                  //   leading: Icon(Icons.help),
                  //   title: Text("Help & Support"),
                  //   trailing: Icon(Icons.arrow_forward_ios),
                  // ),
                  ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0)), //this right here
                              child: Container(
                                height: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/newlogo.png",
                                        height: 80,
                                        width: 80,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Oh No, Your are leaving',
                                        style: TextStyle(
                                          color: Color(0xFF1C1F34),
                                          fontSize: 22,
                                          fontFamily: 'Work Sans',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 287,
                                        child: Text(
                                          'Are you sure you want to logout',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF6C757D),
                                            fontSize: 14,
                                            fontFamily: 'Work Sans',
                                            fontWeight: FontWeight.w500,
                                            height: 0.10,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              width: 100,
                                              height: 51,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 16),
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'No',
                                                    style: TextStyle(
                                                      color: Color(0xFF1C1F34),
                                                      fontSize: 16,
                                                      fontFamily: 'Work Sans',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          InkWell(
                                            onTap: () async {},
                                            child: Container(
                                              width: 100,
                                              height: 51,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 16),
                                              decoration: ShapeDecoration(
                                                color: backgroundColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (builder) =>
                                                                  LoginScreen()));
                                                    },
                                                    child: Text(
                                                      'Yes',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily: 'Work Sans',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
