import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserModel {
  const UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final String firstName;
  final String lastName;
  final String email;

  factory UserModel.toMap(Map<String, dynamic> map) {
    return UserModel(
      firstName: map['firstname'],
      lastName: map['lastname'],
      email: map['email'],
    );
  }
}

class HttpSample extends StatelessWidget {
  const HttpSample({super.key});

  Future<List<UserModel>> _getUsers() async {
    final url = Uri.parse(
      'https://jsonplaceholder.org/users',
    );
    final response = await http.get(url);

    final results = json.decode(response.body) as List;

    final users = <UserModel>[];
    for (dynamic result in results) {
      users.add(UserModel.toMap(result));
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text(
                'Error fetching data.',
              ),
            );
          }

          final users = snapshot.data!;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];

              return ListTile(
                leading: const Icon(
                  Icons.person_outline_rounded,
                ),
                title: Text('${user.firstName} ${user.lastName}'),
                subtitle: Text(user.email),
              );
            },
          );
        },
      ),
    );
  }
}
