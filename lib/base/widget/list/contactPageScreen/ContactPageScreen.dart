import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'ContactModal.dart';
import 'ContactsList.dart';

class ContactPageScreen extends StatelessWidget {
  _buildContactList() {
    return <ContactModal>[
      const ContactModal(
        fullName: 'Romain Hoogmoed',
        email: 'romain.hoogmoed@example.com',
      ),
      const ContactModal(
        fullName: 'Emilie Olsen',
        email: 'emilie.olsen@example.com',
      ),
      const ContactModal(
        fullName: 'Nishant Srivastava',
        email: 'nishant.srivastava@example.com',
      ),
      const ContactModal(
        fullName: 'Romain Hoogmoed',
        email: 'romain.hoogmoed@example.com',
      ),
      const ContactModal(
        fullName: 'Emilie Olsen',
        email: 'emilie.olsen@example.com',
      ),
      const ContactModal(
        fullName: 'Nishant Srivastava',
        email: 'nishant.srivastava@example.com',
      ),
      const ContactModal(
        fullName: 'Romain Hoogmoed',
        email: 'romain.hoogmoed@example.com',
      ),
      const ContactModal(
        fullName: 'Emilie Olsen',
        email: 'emilie.olsen@example.com',
      ),
      const ContactModal(
        fullName: 'Nishant Srivastava',
        email: 'nishant.srivastava@example.com',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ContactPageScreen",
        () => Get.back(),
        null,
      ),
      body: ContactsList(_buildContactList()),
    );
  }
}
