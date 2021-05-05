import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CupertinoTabController _controller = CupertinoTabController();
  int _selectedTab = 0;
  int _lastTab = 0;

  void _handleTabSelection() {
    _lastTab = _selectedTab;
    _selectedTab = _controller.index;
    print(
        "Changed tab to: ${_selectedTab.toString().split('.').last} , last: ${_lastTab}");
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handleTabSelection);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add)),
          BottomNavigationBarItem(icon: Icon(Icons.remove)),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            print("rebuilding with index $index");
            if (index == 0) {
              return Page1_1();
            } else {
              return Page1_2();
            }
          },
          routes: {
            "/1": (context) => Page1_1(),
            "/1/2": (context) => Page1_2(),
            "/2/1": (context) => Page2_1(),
            "/2/2": (context) => Page2_2(),
          },
        );
      },
    );
  }
}

class Page1_1 extends StatelessWidget {
  const Page1_1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("1_1 building");
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Page 1 of tab 1'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Next page of tab 1'),
          onPressed: () {
            Navigator.of(context).pushNamed("/2/1");
          },
        ),
      ),
    );
  }
}

class Page2_1 extends StatelessWidget {
  const Page2_1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("2_1 building");
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Page 2 of tab 1'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

class Page1_2 extends StatelessWidget {
  const Page1_2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("1_2 building");
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Page 1 of tab 2'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Next page of tab 2'),
          onPressed: () {
            Navigator.of(context).pushNamed("/2/1");
          },
        ),
      ),
    );
  }
}

class Page2_2 extends StatelessWidget {
  const Page2_2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("2_2 building");
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Page 2 of tab 2'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
