import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ImageLoaderSample extends StatelessWidget {
  const ImageLoaderSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: 160.0,
          height: 160.0,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: ImageLoader(
              url:
                  'https://camo.githubusercontent.com/8ca355b5c8a6df04ea30294e513b38128c214075013df41d95609ccd1a745c91/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f636d732d73746f726167652d6275636b65742f36653139666565366234376233366361363133662e706e67',
            ),
          ),
        ),
      ),
    );
  }
}

class ImageLoader extends StatefulWidget {
  const ImageLoader({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<ImageLoader> createState() => _ImageLoaderState();
}

class _ImageLoaderState extends State<ImageLoader> {
  final _dio = Dio(
    BaseOptions(
      responseType: ResponseType.bytes,
    ),
  );
  final _logger = Logger();

  Future<Uint8List> _loader() async {
    try {
      final response = await _dio.get(
        widget.url,
      );

      await Future.delayed(
        const Duration(
          seconds: 1,
        ),
      );

      return Uint8List.fromList(
        response.data,
      );
    } catch (err, stackTrace) {
      _logger.e(
        'Error Log',
        error: err,
        stackTrace: stackTrace,
      );

      throw ArgumentError(err);
    }
  }

  @override
  void dispose() {
    _dio.close();
    _logger.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loader(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: Colors.white,
          );
        } else if (snapshot.hasError || snapshot.data == null) {
          return const Text(
            'Error loading image.',
          );
        }

        return Image.memory(
          snapshot.data!,
        );
      },
    );
  }
}
