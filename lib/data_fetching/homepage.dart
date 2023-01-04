// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_api/data_fetching/servicers.dart';
import 'package:http/http.dart' as http;
import 'model.dart';
import 'dart:async';
import 'dart:convert';

class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  List<Post>? post;
  var isloading = false;
  @override
  void initState() {
    Getdata();
    // TODO: implement initState
    super.initState();
  }

  Getdata() async {
    post = await RemoteService().getPost();

    if (post != null) {
      setState(() {
        isloading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fetch data"),
        ),
        body: Visibility(
          visible: isloading,
          child: ListView.builder(
              itemCount: post?.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 70,
                        width: 70,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${post![index].title}",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              post![index].body!,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 40,
                              ),
                            ),

                            // Text(post![index].toString()),
                            // Text(post![index].title),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
          replacement: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
