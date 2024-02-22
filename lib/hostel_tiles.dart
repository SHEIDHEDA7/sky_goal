import 'package:flutter/material.dart';

class HostelTile extends StatelessWidget {
  final String hostPath;

  const HostelTile({super.key, required this.hostPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Container(
        height: 170,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(hostPath), fit: BoxFit.cover)),
      ),
    );
  }
}
