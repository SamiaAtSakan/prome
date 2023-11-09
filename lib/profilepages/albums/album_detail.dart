import 'package:flutter/material.dart';
import 'package:prome/main_dashboard.dart';
import 'package:prome/utils/color.dart';

class AlbumDetail extends StatefulWidget {
  const AlbumDetail({super.key});

  @override
  State<AlbumDetail> createState() => _AlbumDetailState();
}

class _AlbumDetailState extends State<AlbumDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fawad",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => AlbumDetail()));
                    },
                    child: GridTile(
                      footer: GridTileBar(
                        backgroundColor: Colors.black54,
                        title: Text(
                          'Fawad',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("2 Photos"),
                      ),
                      child: Image.asset(
                        'assets/pp.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainDashboard()));
              },
              child: Text(
                "Published",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: backgroundColor,
                  fixedSize: Size(325, 40)),
            ),
          ),
        ],
      ),
    );
  }
}
