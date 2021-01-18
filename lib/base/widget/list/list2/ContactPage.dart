import 'package:flutter/material.dart';
import 'package:hello_word/base/widget/list/list2/ContactsList.dart';

import 'ContactModal.dart';

class ContactPage extends StatelessWidget {
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
    return Scaffold(body: ContactsList(_buildContactList()));
  }
}
