import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notesitem extends StatelessWidget {
  const Notesitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter tips",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Build Your carrer with tharwat samy",
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(0.3)),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.trash, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26, top: 10, bottom: 10),
            child: Text(
              "May 21 ,2022",
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.3)),
            ),
          )
        ],
      ),
    );
  }
}
