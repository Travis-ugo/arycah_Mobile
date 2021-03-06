import '../../../library_imports.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameTextController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Password',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Enter your new password to continue'),
              const SizedBox(height: 20),
              BoxCover(
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Old Password',
                ),
              ),
              BoxCover(
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'New Password',
                ),
              ),
              BoxCover(
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Confirm Password',
                ),
              ),
              const SizedBox(height: 20),
              MasterButton(
                text: 'Change',
                onPressed: () {},
                color: const Color(0xFF949EB0),
                borderColor: const Color(0xFF949EB0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
