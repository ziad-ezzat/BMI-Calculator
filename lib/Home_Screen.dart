import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: const Icon(Icons.menu),
        title: const Text('Home'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: printHello),
        ],
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
            ),
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  void printHello() {
    print('search button pressed');
  }
}




/*
Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ziad',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'ezzat',
                  style: TextStyle(
                    fontSize: 20.25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
 */
