import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

const antDesignIcons = <IconData>[
  AntDesign.gitlab_fill,
  AntDesign.sketch_outline,
  AntDesign.alibaba_outline,
];

const bootstrapIcons = <IconData>[
  Bootstrap.google,
  Bootstrap.bootstrap,
  Bootstrap.github,
];

const boxIcons = <IconData>[
  BoxIcons.bxl_apple,
  BoxIcons.bx_git_branch,
  BoxIcons.bxs_cookie,
];

const brandIcons = <String>[
  Brands.icons8,
  Brands.the_big_bang_theory,
  Brands.android_studio,
];

const clarityIcons = <IconData>[
  Clarity.map_outline_badged,
  Clarity.application_solid,
  Clarity.camera_line,
];

const evaIcons = <IconData>[
  EvaIcons.clipboard,
  EvaIcons.flash,
  EvaIcons.clipboard_outline,
];

const flagIcons = <String>[
  Flags.india,
  Flags.united_kingdom,
  Flags.united_states_of_america,
];

class IconsPlusSample extends StatelessWidget {
  const IconsPlusSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 60.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(antDesignIcons.length, (index) {
                    return Icon(
                      antDesignIcons[index],
                      size: 32.0,
                    );
                  }),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(bootstrapIcons.length, (index) {
                    return Icon(
                      bootstrapIcons[index],
                      size: 26.0,
                    );
                  }),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(boxIcons.length, (index) {
                    return Icon(
                      boxIcons[index],
                      size: 26.0,
                    );
                  }),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(brandIcons.length, (index) {
                    return Brand(
                      brandIcons[index],
                      size: 26.0,
                    );
                  }),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(clarityIcons.length, (index) {
                    return Icon(
                      clarityIcons[index],
                      size: 26.0,
                    );
                  }),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(evaIcons.length, (index) {
                    return Icon(
                      evaIcons[index],
                      size: 26.0,
                    );
                  }),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(flagIcons.length, (index) {
                    return Flag(
                      flagIcons[index],
                      size: 26.0,
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
