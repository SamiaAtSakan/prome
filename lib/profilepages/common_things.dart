import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class CommonThings extends StatefulWidget {
  const CommonThings({super.key});

  @override
  State<CommonThings> createState() => _CommonThingsState();
}

class _CommonThingsState extends State<CommonThings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Common Things",
          style: TextStyle(
              color: textColorTitle, fontSize: 18, fontWeight: FontWeight.w500),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "These Persons have Common Things with you add them as a friend"),
          ),
          SizedBox(
            height: 600,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (BuildContext ctx, index) {
                  return Card(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: GridTile(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                          ),
                          header: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                "assets/srf.png",
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                "SRK",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Send Request")),
                            ],
                          ),
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
