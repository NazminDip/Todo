import 'package:app_first/constant/bootom_page.dart';

import 'package:flutter/material.dart';

class ProPage extends StatelessWidget {
  const ProPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: _buildAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 800,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(Icons.calendar_month)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                'Design Team',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Design Team',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 131, 147, 235),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 131, 147, 235),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 131, 147, 235),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 5),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 131, 147, 235),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 131, 147, 235),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 131, 147, 235),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),

      drawer: Drawer(
          child: ListView(children: const [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.indigo),
          child: UserAccountsDrawerHeader(
            currentAccountPicture: Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 500,
                backgroundImage: AssetImage('images/m.png'),
              ),
            ),
            accountEmail: Text('Alex@gmail.com'),
            accountName: Text('Alex Ahmed'),
          ),
        ),
        ListTile(
          title: Text('Account Name'),
          subtitle: Text('change Name'),
          trailing: Icon(
            Icons.edit,
            color: Colors.indigo,
          ),
        ),
        ListTile(
          title: Text('Password'),
          subtitle: Text('forger password'),
          trailing: Icon(
            Icons.lock,
            color: Colors.indigo,
          ),
        ),
        ListTile(
          title: Text('Message'),
          subtitle: Text('send'),
          trailing: Icon(
            Icons.send,
            color: Colors.indigo,
          ),
        ),
      ])),

      /////////////////////////////////////////  BOTTOM NAV
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 500,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: const BottomPage(),
        ),
      ),
    );
  }

////////////////////////////////////////  APPPBAR
  _buildAppbar() {
    return AppBar(
      title: ListTile(
        contentPadding: const EdgeInsets.all(30),
        title: const Text(
          'Hi, Designer',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        subtitle: const Text(
          'Do You have 4 Task',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset('images/m.png')),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
