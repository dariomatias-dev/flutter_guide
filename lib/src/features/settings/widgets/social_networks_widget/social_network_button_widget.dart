part of 'social_networks_widget.dart';

class SocialNetworkButtonWidget extends StatelessWidget {
  const SocialNetworkButtonWidget({
    super.key,
    required this.socialNetwork,
  });

  final SocialNetworkModel socialNetwork;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        openURL(
          () => context,
          socialNetwork.url,
        );
      },
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
