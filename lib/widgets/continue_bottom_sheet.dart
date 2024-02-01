import 'package:flutter/material.dart';

class ContinueBottomSheet extends StatelessWidget {
  const ContinueBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245,
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.g_mobiledata_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  'Continue with Google',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.apple,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  'Continue with Apple',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  'Continue with Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
