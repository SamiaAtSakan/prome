import 'package:flutter/material.dart';
import 'package:prome/profilepages/jobs/my_jobs.dart';
import 'package:prome/utils/color.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Job Description",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/rext.png"),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Description",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          const Divider(),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.join_full),
              label: Text(
                "Part Time",
                style: TextStyle(color: backgroundColor),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.timeline),
              label: Text(
                "2 months ago",
                style: TextStyle(color: backgroundColor),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.price_change),
              label: Text(
                "20\$ to 100\$",
                style: TextStyle(color: backgroundColor),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.type_specimen),
              label: Text(
                "Art & Design",
                style: TextStyle(color: backgroundColor),
              )),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => MyJobs()));
              },
              child: Text(
                "Apply",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(225, 40)),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
