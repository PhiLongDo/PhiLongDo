import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'text_body.dart';
import 'text_link.dart';
import 'text_title.dart';

class PersonalInfoParticipant extends StatelessWidget {
  const PersonalInfoParticipant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle(text: 'Personal Info'),
        Row(
          children: [
            _leading(),
            TextBody(text: 'Name: '),
            TextBody(text: myName),
          ],
        ),
        Row(
          children: [
            _leading(),
            TextBody(text: 'Date of birth: '),
            TextBody(text: DateFormat('dd-MM-YYY').format(dateOfBirth)),
          ],
        ),
        Row(
          children: [
            _leading(),
            TextBody(text: 'Email: '),
            TextLink(
              text: emailContact,
              onTap: () {
                launchUrl(Uri.parse('mailto:$emailContact'));
              },
            ),
          ],
        ),
        Row(
          children: [
            _leading(),
            TextBody(text: 'Phone: '),
            TextBody(text: phoneNumber),
          ],
        ),
        Row(
          children: [
            _leading(),
            TextBody(text: 'Github: '),
            TextLink(
              text: 'PhiLongDo',
              onTap: () {
                launchUrl(Uri.parse(githubUrl), webOnlyWindowName: '_blank');
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _leading() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Icon(Icons.ac_unit, color: Colors.grey, size: 16),
    );
  }
}
