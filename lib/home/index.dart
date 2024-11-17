import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> getFiles() async {
    await PhotoManager.requestPermissionExtend();
    final List<AssetPathEntity> paths = await PhotoManager.getAssetPathList(
      type: RequestType.audio,
    );
    for (AssetPathEntity path in paths) {
      if (path.name == 'CallRecord') {
        debugPrint("item ===>${path.toString()}");
        final List<AssetEntity> entities =
            await path.getAssetListPaged(page: 0, size: 80);
        debugPrint('entities ===>${entities.toString()}');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: ('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        )
      ]),
    );
  }
}
