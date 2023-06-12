import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  /*getuser function start here*/
  getuser() async {
    var baseurl = 'https://jsonplaceholder.typicode.com/users';
    var url = Uri.parse(baseurl);
    var response = await http.get(url);
    var JsonData = jsonDecode(response.body);
    print(JsonData);
    return JsonData;
  }
  /*getUser function end here*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getuser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Text('Nothing in Api'),
            );
          } else
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ReUseableRow(
                          title: "Name", value: snapshot.data[index]['name']),
                      ReUseableRow(
                          title: "Username",
                          value: snapshot.data[index]['username']),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(snapshot.data[index]['address']['street']),
                                Text(snapshot.data[index]['address']['suite']),
                                Text(snapshot.data[index]['address']['city']),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ReUseableRow(
                          title: "Zipcode",
                          value: snapshot.data[index]['address']['zipcode']),
                      Divider(),
                    ],
                  );
                });
        },
      ),
    );
  }
}

class ReUseableRow extends StatelessWidget {
  final String title, value;
  const ReUseableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
