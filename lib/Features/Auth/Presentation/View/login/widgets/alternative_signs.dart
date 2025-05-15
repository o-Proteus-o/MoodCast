import 'package:flutter/material.dart';

class AltenativeSigns extends StatelessWidget {
  final void Function() onGoogle;
  final void Function() onFacebook;
  const AltenativeSigns({
    super.key,
    required this.onGoogle,
    required this.onFacebook,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onGoogle,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/google logo.png",
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: onFacebook,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/Facebook-logo.png",
                width: 80,
                height: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
