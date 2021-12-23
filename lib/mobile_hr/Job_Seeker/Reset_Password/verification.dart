import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:test_subject/mobile_hr/Widgets/master_button.dart';
import 'package:test_subject/mobile_hr/Widgets/v_block.dart';

class RVerification extends StatelessWidget {
  const RVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _block_1 = TextEditingController();
    final _block_2 = TextEditingController();
    final _block_3 = TextEditingController();
    final _block_4 = TextEditingController();
    final _block_5 = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 20),
                SizedBox(width: 15),
                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Enter your the verification code we just sent to your email address',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VBlockContainer(
                  child: VBlock(
                    controller: _block_1,
                  ),
                ),
                VBlockContainer(
                  child: VBlock(
                    controller: _block_2,
                  ),
                ),
                VBlockContainer(
                  child: VBlock(
                    controller: _block_3,
                  ),
                ),
                VBlockContainer(
                  child: VBlock(
                    controller: _block_4,
                  ),
                ),
                VBlockContainer(
                  child: VBlock(
                    controller: _block_5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            MasterButton(text: 'Verify', onPressed: () {}),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
