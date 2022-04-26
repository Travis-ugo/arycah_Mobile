import '../../../library_imports.dart';

class JobProfile2 extends StatelessWidget {
  final PageController controller;
  const JobProfile2({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameTextController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormContainer(
                text: 'Name*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'John Doe',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'Name is required';
                    }
                    return 'null';
                  },
                ),
              ),
              FormContainer(
                text: 'Phone number*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: '+123456789',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'phone number is required';
                    }
                    return 'null';
                  },
                ),
              ),
              FormContainer(
                text: 'Email*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Example@gmail.com',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'email is required';
                    }
                    return 'null';
                  },
                  suffixIcon: const Icon(IconlyBold.password),
                ),
              ),
              FormContainer(
                height: MediaQuery.of(context).size.height / 3.5,
                text: 'Little info about you',
                child: FormBlock(
                  controller: _nameTextController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: MasterButton(
                  borderColor: const Color(0xFF949EB0),
                  color: const Color(0xFF949EB0),
                  onPressed: () {
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.linear,
                    );
                  },
                  text: 'Next',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
