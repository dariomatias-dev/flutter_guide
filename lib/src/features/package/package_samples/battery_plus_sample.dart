import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

final battery = Battery();

class BatteryPlusSample extends StatefulWidget {
  const BatteryPlusSample({super.key});

  @override
  State<BatteryPlusSample> createState() => _BatteryPlusSampleState();
}

class _BatteryPlusSampleState extends State<BatteryPlusSample> {
  int? _batteryLevel;
  bool? _isInBatterySaveMode;
  BatteryState? _batteryState;

  Future<void> getBatteryInfos() async {
    _batteryLevel = await battery.batteryLevel;
    _isInBatterySaveMode = await battery.isInBatterySaveMode;
  }

  @override
  void initState() {
    battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getBatteryInfos();

    return Scaffold(
      body: FutureBuilder(
        future: getBatteryInfos(),
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

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Battery Level: ${_batteryLevel!}%',
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Device in battery saving mode: ${_isInBatterySaveMode! ? 'Yes' : 'No'}.',
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Battery State: ${_batteryState?.name}',
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
