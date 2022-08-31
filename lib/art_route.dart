import 'package:flutter/material.dart';
import 'package:navigation/art_util.dart';

class ArtRoute extends StatelessWidget {
  const ArtRoute({super.key, required this.art});

  final String art;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
