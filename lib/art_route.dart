import 'package:flutter/material.dart';
import 'package:navigation/art_util.dart';

class ArtRoute extends StatelessWidget {
  const ArtRoute({super.key, required this.art});

  final String art;
  static int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  image: NetworkImage('http://bit.ly/fl_sky'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(
                'Choose your art',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                ArtUtil.CARAVAGGIO,
              ),
              trailing: const Icon(
                Icons.art_track,
              ),
              onTap: () => changeRoute(
                context,
                ArtUtil.CARAVAGGIO,
              ),
              tileColor: Colors.teal[50],
            ),
            ListTile(
              title: const Text(
                ArtUtil.MONET,
              ),
              trailing: const Icon(
                Icons.art_track,
              ),
              onTap: () => changeRoute(
                context,
                ArtUtil.MONET,
              ),
              tileColor: Colors.teal[50],
            ),
            ListTile(
              title: const Text(
                ArtUtil.VANGOGH,
              ),
              trailing: const Icon(
                Icons.art_track,
              ),
              onTap: () => changeRoute(
                context,
                ArtUtil.VANGOGH,
              ),
              tileColor: Colors.teal[50],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Navigation Art'),
        actions: [
          PopupMenuButton(
            onSelected: ((value) => changeRoute(context, value.toString())),
            itemBuilder: ((context) {
              return ArtUtil.menuItems.map((e) {
                return PopupMenuItem<String>(
                  value: e,
                  child: Text(e),
                );
              }).toList();
            }),
            // icon: const Icon(
            //   Icons.image,
            // ),
            // child: const Center(child: Text('Change Route')),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              art,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow[700],
        selectedItemColor: Colors.white,
        selectedFontSize: 16.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.art_track,
            ),
            label: ArtUtil.CARAVAGGIO,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.art_track,
            ),
            label: ArtUtil.MONET,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.art_track,
            ),
            label: ArtUtil.VANGOGH,
          ),
        ],
        currentIndex: _currentIndex,
        onTap: ((value) {
          changeRoute(context, ArtUtil.menuItems[value]);
          _currentIndex = value;
        }),
      ),
    );
  }
}

void changeRoute(BuildContext context, String menuItem) {
  late String image;

  switch (menuItem) {
    case ArtUtil.CARAVAGGIO:
      image = ArtUtil.IMG_CARAVAGGIO;
      break;
    case ArtUtil.MONET:
      image = ArtUtil.IMG_MONET;
      break;
    case ArtUtil.VANGOGH:
      image = ArtUtil.IMG_VANGOGH;
      break;
  }
  Navigator.push(
      context, MaterialPageRoute(builder: ((context) => ArtRoute(art: image))));
}
