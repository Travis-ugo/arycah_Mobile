import '../../library_imports.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(IconlyBold.arrow_left)),
            const SizedBox(height: 35),
            Text(
              "Verification",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Enter your the verification code we just sent to your email address',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 70),
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
            const SizedBox(height: 255),
            Center(
              child: MasterButton(
                onPressed: () {},
                text: 'Verify',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
