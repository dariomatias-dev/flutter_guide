import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com';

class DioClient {
  static final _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }

  Dio get client => dio;
}

class UserModel {
  const UserModel({
    required this.name,
    required this.username,
    required this.email,
  });

  final String name;
  final String username;
  final String email;

  factory UserModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return UserModel(
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}

class ConfiguringDioSample extends StatefulWidget {
  const ConfiguringDioSample({super.key});

  @override
  State<ConfiguringDioSample> createState() => _ConfiguringDioSampleState();
}

class _ConfiguringDioSampleState extends State<ConfiguringDioSample> {
  final _client = DioClient().client;

  Future<List<UserModel>> _fetchUsers() async {
    final response = await _client.get('/users');

    final users = <UserModel>[];

    for (Map<String, dynamic> result in response.data) {
      users.add(
        UserModel.fromJson(result),
      );
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError || snapshot.data == null) {
            return const Center(
              child: Text('Ocorreu um erro ao obter dados'),
            );
          }

          final data = snapshot.data!;

          return ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
            ),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final user = data[index];
            
                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(
                      Icons.person_outline,
                    ),
                  ),
                  title: Text(user.username),
                  subtitle: Text(user.name),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
