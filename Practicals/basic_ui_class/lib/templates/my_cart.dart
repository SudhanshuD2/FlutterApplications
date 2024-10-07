import 'package:flutter/material.dart';
// My Cart screen of shoes purchase
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
  int counter1 = 1;
  int counter2 = 1;
  double fees = 5.00;
  int disc = 40;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('My cart', style: TextStyle(
            color: Colors.blue[700],
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 2,
          shadowColor: Colors.grey,
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.navigate_before_rounded, size: 45,),
          )
        ),
        body: Column(
          children: [
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset("asset/shoe.jpg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('Nike Shoes', style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      Text('With iconic style and legendry\ncomfort, on repeat', style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text('\$${570.00*counter1}', style:const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                          const SizedBox(width: 60,),
                          Row(
                            children:[
                              GestureDetector(
                                onTap:(){
                                  if(counter1>1){
                                    counter1--;
                                    setState(() {});
                                  }
                                },
                                child: const Icon(Icons.remove, size: 25),
                              ),
                              Center(
                                child: Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1, color: Colors.grey.shade600),
                                    borderRadius: const BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Text('$counter1', style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ), textAlign: TextAlign.center,)
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  counter1++;
                                  setState(() {});
                                },
                                child: const Icon(Icons.add, size: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]
              ),
            ),
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset("asset/shoe.jpg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('Nike Shoes', style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      Text('With iconic style and legendry\ncomfort, on repeat', style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text('\$${77.00*counter2}', style:const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                          const SizedBox(width: 75,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              GestureDetector(
                                onTap:(){
                                  if(counter2>1){
                                    counter2--;
                                    setState(() {});
                                  }
                                },
                                child: const Icon(Icons.remove, size: 25),
                              ),
                              Center(
                                child: Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1, color: Colors.grey.shade600),
                                    borderRadius: const BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Text('$counter2', style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ), textAlign: TextAlign.center)
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  counter2++;
                                  setState(() {});
                                },
                                child: const Icon(Icons.add, size: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]
              ),
            ),
            const SizedBox(height: 220,),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal:', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),),
                        Text('\$${(570.00*counter1)+(77.00*counter2)}', style:const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Fee:', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),),
                        Text('\$$fees', style:const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount:', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),),
                        Text('$disc%', style:const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 30,
                    child: ElevatedButton(onPressed: (){},
                    style:ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue.shade700),
                    ),
                    child: Text('Checkout for \$${(((570.00*counter1)+(77.00*counter2)+fees)-(((570.00*counter1)+(77.00*counter2)+fees)*(disc/100)))}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue.shade50,
                    ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}