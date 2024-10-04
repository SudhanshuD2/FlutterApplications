import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoesApp(),
    );
  }
}

class ShoesApp extends StatefulWidget{
  const ShoesApp({super.key});
  @override
  State createState() => _ShoesAppState();
}


class _ShoesAppState extends State{
  int _ctr = 1;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Shoes', style: TextStyle(
            color: Colors.blue[700],
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),),
          backgroundColor: Colors.white,
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined))]
        ),
        body: Column(
          children: [
            Container(
              height: 420,
              color: Colors.white,
              child: Image.network(
                'https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: const Row( 
                children: [
                  SizedBox(width: 22),
                  Text('Nike Air Force 1 "07', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 32,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  ElevatedButton(onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue[600]),
                    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 15)),
                  ),
                  child: const Text('SHOES', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),),
                  const SizedBox(width: 10),
                  ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue[600]),
                    padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
                  ),
                  child: const Text('FOOTWEAR', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),)
                  ),
                ],),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 110,
              width: MediaQuery.of(context).size.width,
              child:
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    width: 250,
                    child: Text(textAlign: TextAlign.left,
                      'With iconic style and legendry comfort, the AF-1\nwas made to be worn on repeat. This iteration puts a\nfresh spin on the hoopsclassic with crisp leather, era-\nechoong \'80s construction and reflective-design\nSwoosh logos.',
                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const Text('Quantity', style: TextStyle( fontSize: 14, fontWeight: FontWeight.w600),),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: (){
                      if(_ctr>1){
                        _ctr--;
                        setState(() {});
                      }
                    },
                    child:
                    Icon(Icons.remove, color: Colors.grey.shade700),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade100, width: 1.2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    height: 35,
                    width: 35,
                    child: Center(child: Text('$_ctr', style: TextStyle(color: Colors.grey[700], fontSize: 18)),),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: (){
                      _ctr++;
                      setState(() {});
                    },
                    child: Icon(Icons.add, color: Colors.grey.shade700),),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
                _ctr = 1;
                setState((){});
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue[600]),
                padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 150, vertical: 14)),
              ),
              child: const Text('PURCHASE', style: TextStyle(fontSize: 15, color: Colors.white),)
            ),
          ],
        ),
    );
  }
}