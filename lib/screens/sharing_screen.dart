import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import 'package:flutter/material.dart';

class SharingPage extends StatelessWidget {
  const SharingPage({Key? key}) : super(key: key);

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
        ),
      ),
      /* body: Center(
          child: ElevatedButton(
              onPressed: () {
                Share.share('com.example.abu_shokor_home');
              },
              child: const Icon(Icons.share)),
        )
        */
      body: Center(
        child: ElevatedButton(
            onPressed: () async {}, child: const Icon(Icons.share)),
      ),
    );
  }
}
