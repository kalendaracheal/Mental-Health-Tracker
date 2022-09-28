import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  const ListButton(
      {Key? key, required this.label, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70,
      ),
      child: ListTile(
        // tileColor: Colors.white,
        // selectedTileColor: Colors.black,
        title: Text(
          "label",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        leading: Icon(
          icon,
          color: color,
        ),
        onTap: onTap,
      ),
    );
  }
}
