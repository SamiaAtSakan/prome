import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Who can follow me?"),
              subtitle: Text("Everyone"),
              trailing: TextButton(
                  onPressed: () async {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Who can follow me?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(
                                  'Everyone',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'People i Follow',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('CLose'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Change")),
            ),
            Divider(),
            ListTile(
              title: Text("Who can Message me?"),
              subtitle: Text("Everyone"),
              trailing: TextButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Who can message me?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(
                                  'Everyone',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'People i Follow',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'NoBody',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('CLose'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Change")),
            ),
            Divider(),
            ListTile(
              title: Text("Who can see my friends?"),
              subtitle: Text("Everyone"),
              trailing: TextButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Who can see my friends?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(
                                  'Everyone',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'People i Follow',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'People Follow Me',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'No body',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('CLose'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Change")),
            ),
            Divider(),
            ListTile(
              title: Text("Who can post on my timeline?"),
              subtitle: Text("Everyone"),
              trailing: TextButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Who can post on my timeline?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(
                                  'Everyone',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'People i Follow',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'NoBody',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('CLose'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Change")),
            ),
            Divider(),
            ListTile(
              title: Text("Who can see my birhtday?"),
              subtitle: Text("Everyone"),
              trailing: TextButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Who can see my birhtday?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text(
                                  'Everyone',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'People i Follow',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'NoBody',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('CLose'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Change")),
            ),
            Divider(),
            SwitchListTile(
              title: const Text('Confirm Request'),
              subtitle: Text("When some one follow me"),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            SwitchListTile(
              title: const Text('Show my activities'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            SwitchListTile(
              title: const Text('Show Online Users'),
              value: true,
              onChanged: (bool? value) {},
            ),
            Divider(),
            SwitchListTile(
              title: const Text('Share my location with public'),
              value: true,
              onChanged: (bool? value) {},
            ),
          ],
        ),
      ),
    );
  }
}
