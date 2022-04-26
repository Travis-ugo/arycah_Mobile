import '../../../library_imports.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [CommentButton(), ApplyButton()],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: ArycahIcons.arrowLeft,
            ),
            IconButton(
              onPressed: () {},
              icon: ArycahIcons.send,
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Requirement(),
              ),
            ),
            SliverToBoxAdapter(
              child: DescriptiveCarosel(),
            ),
          ],
        ),
      ),
    );
  }
}
