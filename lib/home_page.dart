import 'package:flutter/material.dart';

import 'app_button.dart';
import 'base_client.dart';
import 'user.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  // var users;
  // Abhi() async {
  // var response = await BaseClient().get('/users').catchError((err) {});
  // if (response == null) return;
  // debugPrint('successful:');

  // users = userFromJson(response);
  // debugPrint('Users count: ' + users.length.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlutterLogo(size: 72),
              Column(
                children: [
                  // Text(users.length.toString()),
                  AppButton(
                    operation: 'GET',
                    operationColor: Colors.lightGreen,
                    description: 'Fetch users',
                    onPressed: () async {
                      var response =
                          await BaseClient().get('/users').catchError((err) {});
                      if (response == null) return;
                      debugPrint('successful:');

                      var users = userFromJson(response);
                      debugPrint('Users count: ' + users.length.toString());
                    },
                  ),
                ],
              ),
              AppButton(
                operation: 'POST',
                operationColor: Colors.lightBlue,
                description: 'Add user',
                onPressed: () async {
                  var user = User(
                    name: 'Afzal Ali',
                    qualifications: [
                      Qualification(
                          degree: 'Master', completionData: '01-01-2025'),
                    ],
                  );

                  var response = await BaseClient()
                      .post('/users', user)
                      .catchError((err) {});
                  if (response == null) return print("Error");
                  debugPrint('successful:');
                },
              ),
              AppButton(
                operation: 'PUT',
                operationColor: Colors.orangeAccent,
                description: 'Edit user',
                onPressed: () async {
                  var id = 2;
                  var user = User(
                    name: 'Afzal Ali',
                    qualifications: [
                      Qualification(
                          degree: 'Ph.D', completionData: '01-01-2028'),
                    ],
                  );

                  var response = await BaseClient()
                      .put('/users/$id', user)
                      .catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
              AppButton(
                operation: 'DEL',
                operationColor: Colors.red,
                description: 'Delete user',
                onPressed: () async {
                  var id = 2;
                  var response = await BaseClient()
                      .delete('/users/$id')
                      .catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
