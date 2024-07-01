import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

enum Device {
  android,
  ios,
  windows,
  macos,
  linux,
}

class DeviceModel {
  const DeviceModel({
    required this.name,
    required this.device,
  });

  final String name;
  final Device device;
}

const devices = <DeviceModel>[
  DeviceModel(
    name: 'Android',
    device: Device.android,
  ),
  DeviceModel(
    name: 'iOS',
    device: Device.ios,
  ),
  DeviceModel(
    name: 'Windows',
    device: Device.windows,
  ),
  DeviceModel(
    name: 'MacOS',
    device: Device.macos,
  ),
  DeviceModel(
    name: 'Linux',
    device: Device.linux,
  ),
];

class DeviceInfo {
  const DeviceInfo({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}

class DeviceInfoPlusSample extends StatefulWidget {
  const DeviceInfoPlusSample({super.key});

  @override
  State<DeviceInfoPlusSample> createState() => _DeviceInfoPlusSampleState();
}

class _DeviceInfoPlusSampleState extends State<DeviceInfoPlusSample> {
  DeviceModel _selectDevice = devices.first;

  Future<DeviceInfo?> _getDeviceInfo() async {
    final deviceInfo = DeviceInfoPlugin();
    String deviceId = '';
    String deviceName = '';

    try {
      switch (_selectDevice.device) {
        case Device.android:
          final androidInfo = await deviceInfo.androidInfo;
          deviceId = androidInfo.id;
          deviceName = androidInfo.model;
          break;
        case Device.ios:
          final iosInfo = await deviceInfo.iosInfo;
          deviceId = iosInfo.identifierForVendor ?? '';
          deviceName = iosInfo.name;
          break;
        case Device.windows:
          final windowsInfo = await deviceInfo.windowsInfo;
          deviceId = windowsInfo.deviceId;
          deviceName = windowsInfo.computerName;
          break;
        case Device.macos:
          final macOsInfo = await deviceInfo.macOsInfo;
          deviceId = macOsInfo.systemGUID ?? '';
          deviceName = macOsInfo.computerName;
          break;
        case Device.linux:
          final linuxInfo = await deviceInfo.linuxInfo;
          deviceId = linuxInfo.id;
          deviceName = linuxInfo.name;
          break;
      }

      return DeviceInfo(
        id: deviceId,
        name: deviceName,
      );
    } catch (err) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Device:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 10.0),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _selectDevice,
                    items: List.generate(devices.length, (index) {
                      final device = devices[index];

                      return DropdownMenuItem(
                        value: device,
                        child: Text(
                          device.name,
                        ),
                      );
                    }),
                    onChanged: (value) {
                      setState(() {
                        _selectDevice = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28.0),
            FutureBuilder(
              future: _getDeviceInfo(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.data == null) {
                  return const Center(
                    child: Text(
                      'There was a problem fetching the data.',
                    ),
                  );
                }

                return Column(
                  children: <Widget>[
                    Text(
                      'Device ID: ${snapshot.data!.name}',
                    ),
                    Text(
                      'Name/Model: ${snapshot.data!.name}',
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
