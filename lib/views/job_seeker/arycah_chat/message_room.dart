import '../../library_imports.dart';

class MessageRoom extends StatelessWidget {
  const MessageRoom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<AnimatedListState>();
    final _passwordController = TextEditingController();
    List<String> _chatroom = [];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              IconlyBold.video,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              IconlyBold.call,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
        title: const AppBarTitleReference(),
      ),
      body: Stack(
        children: [
          if (_chatroom.isNotEmpty) ...[
            AnimatedList(
              key: key,
              initialItemCount: _chatroom.length,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  axis: Axis.horizontal,
                  axisAlignment: 1,
                  sizeFactor: animation,
                  child: MessageFlexBox(
                    checkBoxText: _chatroom[index],
                  ),
                );
              },
            )
          ] else if (_chatroom.isEmpty) ...[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width / 2 + 20,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade100,
                            spreadRadius: 5,
                            blurRadius: 9,
                            offset: Offset.fromDirection(
                              2,
                              4,
                            ),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'No Message yet',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          'Send a message or reply with a greeting sticker below',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                        Image.asset('assets/inbox.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
          MessageInputBox(
            passwordController: _passwordController,
            addMessage: () {
              key.currentState!
                  .insertItem(0, duration: const Duration(milliseconds: 10));
              _chatroom.add(_passwordController.text);
              _passwordController.clear();
            },
          ),
        ],
      ),
    );
  }
}
