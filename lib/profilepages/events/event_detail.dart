import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class EventDetail extends StatefulWidget {
  var cover;
  var name;
  var location;
  var start_date;
  var end_date;
  var end_time;
  var start_time;
  var event_id;
  var description;
  EventDetail(
      {super.key,
      required this.name,
      required this.cover,
      required this.description,
      required this.end_date,
      required this.end_time,
      required this.location,
      required this.start_date,
      required this.event_id,
      required this.start_time});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                widget.cover!,
                width: MediaQuery.of(context).size.width,
                height: 170, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Event Name",
                  style: TextStyle(
                      color: textColorTitle,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.name,
                  style: TextStyle(
                      color: textColorTitle,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Divider(
                color: backgroundColor.withOpacity(.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Description",
                  style: TextStyle(
                      color: textColorTitle,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.description,
                  style: TextStyle(
                      color: textColorTitle,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Divider(
                color: textColorSubTitle.withOpacity(.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Location",
                  style: TextStyle(
                      color: textColorTitle,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.location,
                  style: TextStyle(
                      color: textColorTitle,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Divider(
                color: textColorSubTitle.withOpacity(.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Start Time",
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            widget.start_time,
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "End Time",
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            widget.end_time,
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: textColorSubTitle.withOpacity(.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Start Date",
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            widget.start_date,
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "End Date",
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            widget.end_date,
                            style: TextStyle(
                                color: textColorTitle,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
