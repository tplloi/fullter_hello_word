import 'package:flutter/material.dart';
import 'package:hello_word/base/widget/list/list2/contact_list_item.dart';
import 'package:hello_word/base/widget/list/list2/contact_modal.dart';

class ContactsList extends StatelessWidget {
  final List<ContactModal> listContactModal;

  ContactsList(this.listContactModal);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<ContactListItem> _buildContactsList() {
    return listContactModal.map((contact) => ContactListItem(contact)).toList();
  }
}
