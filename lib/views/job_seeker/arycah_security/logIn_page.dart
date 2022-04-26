import '../../library_imports.dart';

class ArycahSignIn extends StatelessWidget {
  final Function()? toggleView;
  const ArycahSignIn({
    Key? key,
    this.toggleView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(debugLabel: '_LogInState');
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "Login with us to get your dream jobs! .",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                FormContainer(
                  text: 'Email or Phone Number',
                  child: FormBlock(
                    controller: _emailController,
                    hintText: 'Example@mail.com',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email address to continue';
                      }
                      return "null";
                    },
                    suffixIcon: const Icon(
                      IconlyBold.message,
                    ),
                  ),
                ),
                FormContainer(
                  text: 'Password',
                  child: FormBlock(
                    controller: _passwordController,
                    hintText: 'Password',
                    validator: (values) {
                      if (values!.length < 4) {
                        return ' password too short';
                      }
                      if (values.isEmpty) {
                        return 'Enter a valid password to continue';
                      }
                      return 'null';
                    },
                    suffixIcon: const Icon(IconlyBold.password),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                MasterButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final provider = Provider.of<FireBaseAuthentication>(
                          context,
                          listen: false);
                      provider.verifyEmail(() {}, _emailController.text);
                      await provider.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                    }
                  },
                  text: 'LOGIN',
                ),
                const SizedBox(height: 25),
                const GoogleButton(
                  buttonText: 'Login with Google',
                ),
                // const Divider(),
                const SizedBox(height: 25),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const viewsSignInPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Don’t have an accout? Register',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
