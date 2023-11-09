import 'package:flutter/material.dart';
import 'package:prome/profilepages/jobs/job_detail.dart';
import 'package:prome/utils/color.dart';

class MyJobs extends StatefulWidget {
  const MyJobs({super.key});

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Jobs",
            style: TextStyle(
                color: textColorTitle,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.filter,
                color: backgroundColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: backgroundColor,
              ),
            )
          ],
        ),
        body: ListView.builder(
            // the number of items in the list

            // display each item of the product list
            itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => JobDetails()));
                  },
                  child: Text("View Job")),
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/srf.png"),
              ),
              title: Text(
                "Nawab posted an job",
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text("Require Software Engineer"),
            ),
          );
        }));
  }
}
