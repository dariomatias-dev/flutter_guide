import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_guide/src/shared/models/social_network_model.dart';

class SocialNetworkButtonWidget extends StatelessWidget {
  const SocialNetworkButtonWidget({
    super.key,
    required this.socialNetwork,
  });

  final SocialNetworkModel socialNetwork;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      highlightColor: Colors.blue.withOpacity(0.07),
      hoverColor: Colors.blue.withOpacity(0.08),
      icon: FaIcon(
        socialNetwork.icon,
        color: Theme.of(context).colorScheme.primary,
        size: 24.0,
      ),
    );
  }
}
