import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class BranchPage extends StatelessWidget {
  const BranchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 131, 24, 138),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
    );
  }
}
