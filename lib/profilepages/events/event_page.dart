import 'package:flutter/material.dart';
import 'package:prome/apis/create_event_apii.dart';
import 'package:prome/models/event_model.dart';
import 'package:prome/profilepages/events/create_event.dart';
import 'package:prome/profilepages/events/event_detail.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  List<Event> yourEvents = [];
  List<Event> otherUserEvents = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Fetch your events
      List<Event> myEvents = await EventApi().fetchEvents(getUserEvents: true);

      // Fetch other user events
      List<Event> othersEvents =
          await EventApi().fetchEvents(getLatestEvents: true);

      setState(() {
        yourEvents = myEvents;
        otherUserEvents = othersEvents;
      });
    } catch (e) {
      // Handle errors
      print('Error fetching events: $e');
    }
  }

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
            child: Text("Create Event"),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Your Events
          if (yourEvents.isNotEmpty) _buildEventList('Your Events', yourEvents),

          // Other User Events
          if (otherUserEvents.isNotEmpty)
            Container(
                height: 300,
                child: _buildEventList('Other User Events', otherUserEvents)),
        ],
      ),
    );
  }

  Widget _buildEventList(String title, List<Event> events) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 208,
          child: ListView.builder(
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
                                  height: 100,
                                )
                              : CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage("assets/pp.png"),
                                ),
                          Text(
                            event.name,
                            style: TextStyle(color: Colors.black),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => EventDetail(
                                    cover: event.imageUrl,
                                    name: event.name,
                                    start_date: event.start_date,
                                    location: event.location,
                                    description: event.description,
                                    event_id: event.event_id,
                                    end_time: event.end_time,
                                    end_date: event.end_date,
                                    start_time: event.start_time,
                                  ),
                                ),
                              );
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
          ),
        ),
      ],
    );
  }
}
