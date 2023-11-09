import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class Notiifications extends StatefulWidget {
  const Notiifications({super.key});

  @override
  State<Notiifications> createState() => _NotiificationsState();
}

class _NotiificationsState extends State<Notiifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message Notifications",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Chat Heads'),
              subtitle: Text("Turn on permit drawing over other apps"),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            SwitchListTile(
              title: const Text('Notification Popup'),
              subtitle: Text("Get notifications when you recive messages"),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            SwitchListTile(
              title: const Text('Conversations tones'),
              subtitle: Text("Play sound for incomming and outgoing messages"),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone liked my posts'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone commented ob my posts'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone shared my posts'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone followed me'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone liked my pages'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone visited my profile'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone mentioned me'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone joined my groups'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone accepted my friend/follow request'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('Someone posted on my timeline'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            CheckboxListTile(
              title: const Text('You have remembrance on this day'),
              value: true,
              onChanged: (bool? value) {},
            ),
          ],
        ),
      ),
    );
  }
}
