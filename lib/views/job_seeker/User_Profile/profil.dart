import '../../library_imports.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    ScrollController _profileController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            IconlyBold.arrow_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: NetworkImage(user.photoURL ??
                              'https://st.depositphotos.com/2101611/4338/v/600/depositphotos_43381243-stock-illustration-male-avatar-profile-picture.jpg'),
                        ),
                        const CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.black,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              IconlyLight.edit,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Hello, ${user.displayName}\n',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Profilcontainer(
                          count: profile.count,
                          title: 'Applied',
                        ),
                        Profilcontainer(
                          count: profile.saved,
                          title: 'Saved',
                        ),
                        Profilcontainer(
                          count: profile.interView,
                          title: 'Interview',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                shrinkWrap: true,
                controller: _profileController,
                itemCount: cardData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ProfileCard(
                      title: cardData[index].title,
                      subTitle: cardData[index].subTitle,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
