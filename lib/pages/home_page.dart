import '../util/emoction_face.dart';
import '../util/excerise_tile.dart';
import 'Package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi ,Suresh',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 jan 2021',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),

                      ///Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )

                      ///
                    ],
                  ),

                  ///search
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  ///emojii
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad

                      Column(
                        children: [
                          Emoction_face(
                            Emoctionface: '😢',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          Emoction_face(
                            Emoctionface: '😃',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          Emoction_face(
                            Emoctionface: '😉',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //excellent
                      Column(
                        children: [
                          Emoction_face(
                            Emoctionface: '😁',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [

                      ///heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      ///list view
                      Expanded(
                          child: ListView(
                            children: [
                              Excerise_tile(),
                              Excerise_tile(),
                              Excerise_tile()
                            ],
                          ))

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
        ],
      ),
    );
  }
}
