import 'package:flutter/material.dart';

main(){
  runApp(new MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2,initialIndex: 0 )
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(text: "Login",),
            new Tab(text: "Sign Up",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[Text("login"), Text("sign")],
        
      ),
    );
  }
}

