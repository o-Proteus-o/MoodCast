import 'package:flutter/material.dart';

class AuthAlternative extends StatelessWidget {
  const AuthAlternative({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width:
            MediaQuery.sizeOf(context).width *
            0.7, // or MediaQuery width * 0.7 for responsive sizing
        child: Row(
          children: [
            Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("or continue with"),
            ),
            Expanded(child: Divider()),
          ],
        ),
      ),
    );
  }
}
