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

enum ResourceType {
  users,
  comments,
  todos,
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

class CommentModel {
  const CommentModel({
    required this.name,
    required this.email,
    required this.body,
  });

  final String name;
  final String email;
  final String body;

  factory CommentModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return CommentModel(
      name: json['name'],
      email: json['email'],
      body: json['body'],
    );
  }
}

class TodoModel {
  const TodoModel({
    required this.userId,
    required this.title,
    required this.completed,
  });

  final int userId;
  final String title;
  final bool completed;

  factory TodoModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return TodoModel(
      userId: json['userId'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}

class ConfiguringDioSample extends StatefulWidget {
  const ConfiguringDioSample({super.key});

  @override
  State<ConfiguringDioSample> createState() => _ConfiguringDioSampleState();
}

class _ConfiguringDioSampleState extends State<ConfiguringDioSample> {
  ResourceType _resourceType = ResourceType.users;

  final _resourceTypes = [
    ResourceType.users,
    ResourceType.comments,
    ResourceType.todos,
  ];

  final _client = DioClient().client;

  Future<List> _fetchData() async {
    try {
      String path = '/';

      if (_resourceType == ResourceType.users) {
        path += 'users';
      } else if (_resourceType == ResourceType.comments) {
        path += 'posts/1/comments';
      } else if (_resourceType == ResourceType.todos) {
        path += 'todos';
      }

      final response = await _client.get(path);

      final results = [];

      final responseData = response.data as List;

      for (int i = 0; i < responseData.length; i++) {
        final result = responseData[i];

        dynamic data;
        if (_resourceType == ResourceType.users) {
          data = UserModel.fromJson(result);
        } else if (_resourceType == ResourceType.comments) {
          data = CommentModel.fromJson(result);
        } else if (_resourceType == ResourceType.todos) {
          data = TodoModel.fromJson(result);
        }

        results.add(
          data,
        );

        if (i == 19) {
          break;
        }
      }

      return results;
    } catch (err) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _resourceType,
                  items: List.generate(_resourceTypes.length, (index) {
                    final resourceType = _resourceTypes[index];

                    return DropdownMenuItem(
                      value: resourceType,
                      child: Text(resourceType.name),
                    );
                  }),
                  onChanged: (value) {
                    setState(() {
                      _resourceType = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _fetchData(),
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

                if (_resourceType == ResourceType.users) {
                  return ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      scrollbars: false,
                    ),
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final element = data[index] as UserModel;

                        return ListTile(
                          leading: const CircleAvatar(
                            child: Icon(
                              Icons.person_outline,
                            ),
                          ),
                          title: Text(element.username),
                          subtitle: Text(element.name),
                        );
                      },
                    ),
                  );
                } else if (_resourceType == ResourceType.comments) {
                  return ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      scrollbars: false,
                    ),
                    child: ListView.separated(
                      itemCount: data.length,
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemBuilder: (context, index) {
                        final element = data[index] as CommentModel;

                        return ListTile(
                          title: Text(element.name),
                          subtitle: Text(element.email),
                        );
                      },
                    ),
                  );
                } else if (_resourceType == ResourceType.todos) {
                  return ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      scrollbars: false,
                    ),
                    child: ListView.separated(
                      itemCount: data.length,
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemBuilder: (context, index) {
                        final element = data[index] as TodoModel;

                        return ListTile(
                          title: Text(element.title),
                          subtitle: Text(element.completed.toString()),
                        );
                      },
                    ),
                  );
                }

                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
