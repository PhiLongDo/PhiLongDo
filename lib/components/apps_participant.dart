import 'package:flutter/material.dart';

import 'text_title.dart';

class AppsParticipant extends StatelessWidget {
  const AppsParticipant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TextTitle(text: 'Apps')],
    );
  }
}
