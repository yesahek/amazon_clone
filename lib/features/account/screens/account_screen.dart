import 'package:amazon_clone/constants/global_vaiables.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/amazon_in.png'),
            ),
          ]),
        ),
      ),
    );
  }
}
