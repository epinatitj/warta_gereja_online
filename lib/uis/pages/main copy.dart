// part of uis;

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'GetWidget',
//         debugShowCheckedModeBanner: false,
//         home: MyHomePage(),
//       );
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final String _playStoreLink =
//       'https://play.google.com/store/apps/details?id=dev.getflutter.appkit';
//   // final String _appStoreLink = 'Coming Soon';
//   final String _githuAppRepoLink =
//       'https://github.com/ionicfirebaseapp/getwidget-app-kit';
//   final String _githubLibraryRepoLink =
//       'https://github.com/ionicfirebaseapp/getwidget';

//   Future _launchUrl(url) async {
//     if (await canLaunch(url)) {
//       return await launch(url);
//     }
//     return Future.value(false);
//   }

//   List list = [
//     "Flutter",
//     "React",
//     "Ionic",
//     "Xamarin",
//   ];

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         // backgroundColor: GFColors.DARK,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             InkWell(
//               onTap: () {
//                 _launchUrl(_githubLibraryRepoLink);
//               },
//               child: SvgPicture.asset(
//                 'assets/images/logo.svg',
//                 height: 100.0,
//                 width: 100.0,
//                 allowDrawingOutsideViewBox: true,
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 const Padding(
//                   padding: EdgeInsets.only(bottom: 25),
//                   child: Center(
//                     child: Text(
//                       'To keep library size small and code clean we manage example on different repository. which includes clear usage of each and every component that we provide in GetWidget library. Please have a look there.',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: GFColors.WHITE,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 GFSearchBar(
//                   searchList: list,
//                   searchQueryBuilder: (query, list) {
//                     return list
//                         .where((item) =>
//                             item.toLowerCase().contains(query.toLowerCase()))
//                         .toList();
//                   },
//                   overlaySearchListItemBuilder: (item) {
//                     return Container(
//                       padding: const EdgeInsets.all(8),
//                       child: Text(
//                         item,
//                         style: const TextStyle(fontSize: 12),
//                       ),
//                     );
//                   },
//                   onItemSelected: (item) {
//                     setState(() {
//                       print('$item');
//                     });
//                   },
//                   searchBoxInputDecoration: InputDecoration(
//                     hintText: 'Hint Text',
//                     labelText: 'Label Text',
//                   ),
//                 ),
//                 GFButton(
//                     size: GFSize.LARGE,
//                     text: 'View on Github',
//                     shape: GFButtonShape.pills,
//                     textStyle: const TextStyle(
//                       fontSize: 16,
//                       color: GFColors.WHITE,
//                     ),
//                     icon: SvgPicture.asset(
//                       'assets/images/github.svg',
//                       height: 22,
//                     ),
//                     color: GFColors.SUCCESS,
//                     blockButton: true,
//                     onPressed: () {
//                       _launchUrl(_githuAppRepoLink);
//                     }),
//               ],
//             ),
//             Column(
//               children: <Widget>[
//                 const Padding(
//                   padding: EdgeInsets.only(bottom: 25),
//                   child: Center(
//                     child: Text(
//                       'We also have same app on playstore. It shows various possibilities that you can achieve using GetWidget library.',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: GFColors.DARK,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 GFButton(
//                     size: GFSize.LARGE,
//                     text: 'View on Playstore',
//                     textStyle:
//                         const TextStyle(fontSize: 16, color: GFColors.WHITE),
//                     icon: SvgPicture.asset(
//                       'assets/images/playstore.svg',
//                       height: 20,
//                     ),
//                     color: GFColors.SUCCESS,
//                     blockButton: true,
//                     onPressed: () {
//                       _launchUrl(_playStoreLink);
//                     }),
//               ],
//             ),
//           ],
//         ),
//       );
// }
