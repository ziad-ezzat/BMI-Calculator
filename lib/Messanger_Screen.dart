import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
        titleSpacing: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[300],
              ),
              padding: const EdgeInsets.all(5),
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Search')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildSoryItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          const Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ziad Ezzat',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'hello heeeelllloooo',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    const Text(
                      '12:00 AM',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  // ignore: sized_box_for_whitespace
  Widget buildSoryItem() => Container(
        width: 60,
        child: const Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ziad ezzat',
              style: TextStyle(color: Colors.black),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
