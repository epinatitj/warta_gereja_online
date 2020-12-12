part of uis;

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedNavbar = 2;
  String username;
  // _PageHomeState(this.username);
  Widget tabPage;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;

      switch (index) {
        case 0:
          {
            print("Beranda");
            tabPage = PageHome();
            // return ProfileUI2(user.uid);
          }
          break;
        case 1:
          {
            print("Renungan");
            tabPage = PageRenungan(title: 'Flutter Slidable Demo');
            // tabPage = PageHome();
            // return ProfileUI2(user.uid);
          }
          break;
        case 2:
          {
            print("Pelajaran Alkitab");
            tabPage = PagePA();
            // return ProfileUI2(user.uid);
          }
          break;
        case 3:
          {
            print("Jadwal");
            tabPage = PageJadwal();
            // return ProfileUI2(user.uid);
          }
          break;

        case 4:
          {
            print("Akun");
            tabPage = PageAkun();
            // return ProfileUI2(user.uid);
          }
          break;

        // case "B": {  print("Good"); }
        // break;

        default:
          {
            // tabPage = ProfileUI2("belum login");
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("belajarFlutter.com"),
      // ),
      body: tabPage,
      // Center(child: UserText(_selectedNavbar.toString())),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.article, title: 'Renungan'),
          TabItem(icon: Icons.book, title: 'PA'),
          TabItem(icon: Icons.calendar_today, title: 'Jadwal'),
          TabItem(icon: Icons.people, title: 'Akun'),
        ],
        initialActiveIndex: _selectedNavbar,
        onTap: _changeSelectedNavBar,
        style: TabStyle.react,
      ),
    );
  }
}
