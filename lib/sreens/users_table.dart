import 'package:flutter/material.dart';

class UserTable extends StatefulWidget {
  UserTable({Key? key}) : super(key: key);

  @override
  State<UserTable> createState() => _UserTableState();
}
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

class _UserTableState extends State<UserTable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            titleSpacing: 100.0,
            title: Center(
              child: Container(
             
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Text('some'),
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text('PUSH'))
                  ],
                )),
            ),
            // flexibleSpace: const FlexibleSpaceBar(
            //   title: Text('SliverAppBar'),
            //   background: FlutterLogo(),
            // ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ]),
      ));
  }
}