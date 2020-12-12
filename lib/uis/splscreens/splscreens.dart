part of uis;

class SplScreens extends StatefulWidget {
  @override
  _SplScreensState createState() => new _SplScreensState();
}

class _SplScreensState extends State<SplScreens> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WARTA JEMAAT ONLINE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplScreens(),
    );
  }
}
