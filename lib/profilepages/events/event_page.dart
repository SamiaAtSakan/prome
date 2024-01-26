import 'package:flutter/material.dart';
import 'package:prome/apis/create_event_apii.dart';
import 'package:prome/models/event_model.dart';
import 'package:prome/profilepages/events/create_event.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreateEvent()));
              },
              child: Text("Create Event"))
        ],
      ),
      body: SizedBox(
        height: 208,
        child: FutureBuilder(
          future: EventApi().fetchEvents(getLatestEvents: true),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Loading indicator or placeholder
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              // Error handling
              return Text('Error: ${snapshot.error}');
            } else {
              // Display your ListView with fetched data
              List<Event> events = snapshot.data!;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  Event event = events[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              event.imageUrl != null
                                  ? Image.network(
                                      event.imageUrl!,
                                      height:
                                          100, // Adjust the height as needed
                                    )
                                  : CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage("assets/pp.png"),
                                    ),
                              Text(
                                event.name,
                                style: TextStyle(
                                    color:
                                        Colors.black), // Customize text style
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle button press, e.g., navigate to event details screen
                                },
                                child: Text("View Details"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
