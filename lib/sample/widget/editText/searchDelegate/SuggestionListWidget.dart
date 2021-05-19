import 'package:flutter/material.dart';

class SuggestionListWidget extends StatelessWidget {
  const SuggestionListWidget({this.listSuggestion, this.query, this.onSelected});

  final List<String>? listSuggestion;
  final String? query;
  final ValueChanged<String>? onSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: listSuggestion!.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = listSuggestion![i];
        return ListTile(
          leading: query!.isEmpty ? Icon(Icons.history) : Icon(null),
          // Highlight the substring that matched the query.
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query!.length),
              style: textTheme!.copyWith(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query!.length),
                  style: textTheme,
                ),
              ],
            ),
          ),
          onTap: () {
            onSelected!(suggestion);
          },
        );
      },
    );
  }
}
