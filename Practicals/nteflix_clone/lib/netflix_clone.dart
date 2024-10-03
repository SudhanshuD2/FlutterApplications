import 'package:flutter/material.dart';

List<Map> _columns  = <Map>[
  {
    'Genre': 'Action',
    // 'movieNames' : ['a'],
    'movieURLs': [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerWen2QDM4y-Qv7PFVMR1Hc9jbn53hoctOw&s',
      'https://www.tallengestore.com/cdn/shop/products/Tenet-ChristopherNolan-Sci-FiCultClassicHollywoodEnglishMoviePoster_67422110-c8d6-408d-b44b-40dd7b854719.jpg?v=1634645947',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerWen2QDM4y-Qv7PFVMR1Hc9jbn53hoctOw&s',
      ],
  }, 
  {
    'Genre': 'Horror',
    // 'movieNames' : ['a'],
    'movieURLs': ['b', 'c', 'd'],
  },
  {
    'Genre': 'Romance',
    // 'movieNames' : ['a'],
    'movieURLs': ['a', 'b', 'd'],
  }
  ];
int n = 0;

class NetflixClone extends StatelessWidget{
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Netflix and Chill!!!', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.brown[800]
          )),
          backgroundColor: Colors.blue[200], 
        ),
        body: ListView.builder(
          itemCount: _columns.length,
          itemBuilder: (BuildContext context, int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _columns[n++]['Genre'],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red[800],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(_columns[n-1]['movieURLs'][n-1])
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(_columns[n-1]['movieURLs'][n-1])
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(_columns[n-1]['movieURLs'][n-1])
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}