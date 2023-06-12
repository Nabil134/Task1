import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AllPostsView extends StatelessWidget {
  const AllPostsView({super.key});
  /*getuser function start here*/
  getuser() async {
    var baseurl = 'https://jsonplaceholder.typicode.com/posts';
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
                      ListTile(
                        title: Text('Title'),
                        subtitle: Text(snapshot.data[index]['title']),
                      ),
                      Divider(),
                    ],
                  );
                });
        },
      ),
    );
  }
}
