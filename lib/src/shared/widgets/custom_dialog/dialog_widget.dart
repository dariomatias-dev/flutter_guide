part of 'custom_dialog.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    required this.title,
    this.description,
    required this.children,
    this.spacingAction,
    required this.actions,
  }) : assert(
          !(actions.length == 2 && spacingAction == null),
          '"spacingAction" property cannot be empty when there are two actions.',
        );

  final String title;
  final String? description;
  final List<Widget> children;
  final double? spacingAction;
  final List<ActionButtonWidget> actions;

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: isLight ? null : FlutterGuideColors.darkNeutral,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isLight ? null : Colors.black.withOpacity(0.42),
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: Column(
            children: [
              const SizedBox(height: 6.0),
              Center(
                child: LineWidget(
                  color: isLight
                      ? Colors.grey.shade400.withOpacity(0.6)
                      : Colors.grey.shade500,
                  width: 32.0,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16.0),
              if (description != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: Text(
                    description!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          isLight ? Colors.grey.shade900 : Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(
                  top: description != null ? 12.0 : 0.0,
                  bottom: 14.0,
                ),
                child: Column(
                  children: children,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Row(
                  children: actions.length == 1
                      ? [
                          Expanded(
                            child: Container(),
                          ),
                          ...actions
                        ]
                      : [
                          actions[0],
                          SizedBox(
                            width: spacingAction,
                          ),
                          actions[1]
                        ],
                ),
              ),
              const SizedBox(height: 26.0),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: LineWidget(
                      color: isLight
                          ? Colors.grey.shade500.withOpacity(0.5)
                          : Colors.grey.shade600,
                      width: double.infinity,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ],
    );
  }
}