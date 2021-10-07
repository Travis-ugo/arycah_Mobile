import 'package:flutter/material.dart';
import 'package:mobile_hr/mobile_hr/Widgets/master_button.dart';
import 'package:mobile_hr/mobile_hr/Widgets/v_block.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _block_1 = TextEditingController();
    final _block_2 = TextEditingController();
    final _block_3 = TextEditingController();
    final _block_4 = TextEditingController();
    final _block_5 = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.arrow_back),
            Text(
              "Verification",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
              ),
            ),
            const Text(
              'Enter your the verification code we just sent to your email address',
            ),
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
            Center(
              child: MasterButton(
                onPressed: () {},
                text: 'Verify',
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
