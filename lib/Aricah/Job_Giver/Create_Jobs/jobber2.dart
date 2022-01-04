import '../../library_imports.dart';

class Jobber2 extends StatelessWidget {
  final PageController controller;
  const Jobber2({
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
                text: 'Level*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Intermidate',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'Name is required';
                    }
                    return 'null';
                  },
                ),
              ),
              FormContainer(
                text: 'Expericen Required*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: '5 years',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'phone number is required';
                    }
                    return 'null';
                  },
                ),
              ),
              FormContainer(
                text: 'Type of Job*',
                child: FormBlock(
                  controller: _nameTextController,
                  hintText: 'Select option',
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'job type is required';
                    }
                    return 'null';
                  },
                  suffixIcon: const Icon(IconlyBold.password),
                ),
              ),
              FormContainer(
                height: MediaQuery.of(context).size.height / 3.5,
                text: 'Deatils about job*',
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
                  text: 'Done',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
