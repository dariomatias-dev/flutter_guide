import 'package:flutter/material.dart';
import 'package:network_info_plus/network_info_plus.dart';

class NetworkInfoPlusSample extends StatefulWidget {
  const NetworkInfoPlusSample({super.key});

  @override
  State<NetworkInfoPlusSample> createState() => _NetworkInfoPlusSampleState();
}

class _NetworkInfoPlusSampleState extends State<NetworkInfoPlusSample> {
  final info = NetworkInfo();

  String? wifiName;
  String? wifiBSSID;
  String? wifiIP;
  String? wifiIPv6;
  String? wifiSubmask;
  String? wifiBroadcast;
  String? wifiGateway;

  Future<void> _fetchData() async {
    final result = await Future.wait([
      info.getWifiName(),
      info.getWifiBSSID(),
      info.getWifiIP(),
      info.getWifiIPv6(),
      info.getWifiSubmask(),
      info.getWifiBroadcast(),
      info.getWifiGatewayIP(),
    ]);

    wifiName = result[0];
    wifiBSSID = result[1];
    wifiIP = result[2];
    wifiIPv6 = result[3];
    wifiSubmask = result[4];
    wifiBroadcast = result[5];
    wifiGateway = result[6];

    setState(() {});
  }

  @override
  void initState() {
    _fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Wifi Name: $wifiName',
            ),
            const SizedBox(height: 12.0),
            Text(
              'Wifi BSSID: $wifiBSSID',
            ),
            const SizedBox(height: 12.0),
            Text(
              'Wifi IP: $wifiIP',
            ),
            const SizedBox(height: 12.0),
            Text(
              'Wifi IPv6: $wifiIPv6',
            ),
            const SizedBox(height: 12.0),
            Text(
              'Wifi Submask: $wifiSubmask',
            ),
            const SizedBox(height: 12.0),
            Text(
              'Wifi Broadcast: $wifiBroadcast',
            ),
            const SizedBox(height: 12.0),
            Text(
              'Wifi Gateway: $wifiGateway',
            ),
            const SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
