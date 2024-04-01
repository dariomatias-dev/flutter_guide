part of 'app_info_widget.dart';

class AppVersion extends StatefulWidget {
  const AppVersion({super.key});

  @override
  State<AppVersion> createState() => _AppVersionState();
}

class _AppVersionState extends State<AppVersion> {
  String version = '--';

  Future<void> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();

    setState(() {
      version = packageInfo.version;
    });
  }

  @override
  void initState() {
    getAppVersion();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Version $version',
      style: const TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
