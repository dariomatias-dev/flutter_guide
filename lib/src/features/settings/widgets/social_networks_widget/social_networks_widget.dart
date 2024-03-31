import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_guide/src/core/constants/social_networks.dart';

import 'package:flutter_guide/src/shared/models/social_network_model.dart';

part 'social_network_button_widget.dart';

class SocialNetworksWidget extends StatelessWidget {
  const SocialNetworksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        bottom: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          socialNetworks.length * 2,
          (index) {
            if (index % 2 == 1) {
              return const SizedBox(width: 16.0);
            }

            return SocialNetworkButtonWidget(
              socialNetwork: socialNetworks[index ~/ 2],
            );
          },
        ),
      ),
    );
  }
}
