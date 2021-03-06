import '../../../library_imports.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _featuredJobs = ScrollController();
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Jobs',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: ArycahIcons.arrowLeft,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SearchFilter(),
            )),
            SliverToBoxAdapter(
              child: ListView.builder(
                shrinkWrap: true,
                controller: _featuredJobs,
                itemCount: companyData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Recommended(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
