// import 'package:custom_components/components/buttons.dart';
// import 'package:custom_components/components/appbar.dart';
import 'package:custom_components/custom_components.dart';
import 'package:custom_components/src/appbar.dart';
import 'package:custom_components/src/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const CustomAppBar(text: 'Components Library'),
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              child: const Text('SIGN IN'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextButton(text: 'Text Button', onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
            const CustomContainer(),
          ],
        ),
      )),
    );
  }
}
