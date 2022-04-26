import '../../../library_imports.dart';

class Jobber1 extends StatelessWidget {
  final PageController controller;
  const Jobber1({
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
                text: 'Postion*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Driver',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'Name is required';
                    }
                    return 'null';
                  },
                ),
              ),
              FormContainer(
                text: 'Salary*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Manager',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'phone number is required';
                    }
                    return 'null';
                  },
                ),
              ),
              FormContainer(
                text: 'Location*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Abuja, Nigeria',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'email is required';
                    }
                    return 'null';
                  },
                  suffixIcon: const Icon(IconlyBold.password),
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
