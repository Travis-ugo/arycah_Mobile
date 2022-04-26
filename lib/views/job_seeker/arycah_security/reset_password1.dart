import '../../../library_imports.dart';

class ResetPassowrdEmail extends StatefulWidget {
  const ResetPassowrdEmail({Key? key}) : super(key: key);

  @override
  State<ResetPassowrdEmail> createState() => _ResetPassowrdEmailState();
}

class _ResetPassowrdEmailState extends State<ResetPassowrdEmail> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_LogInState');
    final _emailController = TextEditingController();
    Color buttonColor = const Color(0xFF949EB0);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text("Enter your email address below to reset your password"),
            FormContainer(
              text: 'Email Address',
              child: FormBlock(
                controller: _emailController,
                hintText: 'Enter your email account',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your email account';
                  } else {
                    setState(
                      () {
                        buttonColor = const Color(0xFF0075FF);
                      },
                    );
                  }
                  return "null";
                },
                suffixIcon: const Icon(
                  IconlyBold.message,
                ),
              ),
            ),
            MasterButton(
              borderColor: buttonColor,
              color: buttonColor,
              onPressed: () {},
              text: 'Reset Password',
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Login"),
            ),
          ],
        ),
      ),
    );
  }
}

class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  Color buttonColor = const Color(0xFF949EB0);
  @override
  Widget build(BuildContext context) {
    final _block_1 = TextEditingController();
    final _block_2 = TextEditingController();
    final _block_3 = TextEditingController();
    final _block_4 = TextEditingController();
    final _block_5 = TextEditingController();
    List carioky = [
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
    ];
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              for (var i in carioky)
                VBlockContainer(
                  child: VBlock(
                    controller: _block_4,
                  ),
                ),
            ],
          ),
          MasterButton(
            borderColor: buttonColor,
            color: buttonColor,
            onPressed: () {},
            text: 'Reset Password',
          ),
          const Text("I didn’t recieve any code"),
          TextButton(
            onPressed: () {},
            child: const Text("RESEND CODE"),
          )
        ],
      ),
    );
  }
}
