import 'package:flutter/material.dart';
import 'package:navigation/art_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art Tab',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Navigation Art'),
            bottom: const TabBar(
              labelColor: Colors.blueGrey,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(Icons.art_track),
                  text: ArtUtil.CARAVAGGIO,
                ),
                Tab(
                  icon: Icon(Icons.art_track),
                  text: ArtUtil.MONET,
                ),
                Tab(
                  icon: Icon(Icons.art_track),
                  text: ArtUtil.VANGOGH,
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      ArtUtil.IMG_CARAVAGGIO,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      ArtUtil.IMG_MONET,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      ArtUtil.IMG_VANGOGH,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
