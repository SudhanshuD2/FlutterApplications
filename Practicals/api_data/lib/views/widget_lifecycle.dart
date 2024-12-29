import 'dart:developer';

import 'package:api_data/views/screen2.dart';
import 'package:flutter/material.dart';

class WidgetLifecycle extends StatefulWidget {
  const WidgetLifecycle({super.key});

  @override
  State<WidgetLifecycle> createState() => _WidgetLifecycleState();
}

class _WidgetLifecycleState extends State<WidgetLifecycle> {

  String str = 'C2W';
  
  @override
  Widget build(BuildContext context) {
    log("in _WidgetLifeCycleState()");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Screen2(text: str),

          ElevatedButton(
            onPressed:(){
              setState((){
                log("SetState called");
                str = (str=='C2W') ? 'Core2Web' : 'C2W';
              }
              );
            },
            child: const Text('Change text'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context)=> Screen2(text: str)),
          );
        },
      ),
    );
  }

  // INIT STATE
  @override
  void initState(){
    super.initState();
    log('In initState()');
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    log("in didChangeDependencies()");
  }

  @override
  void dispose(){
    super.dispose();
    log("in dispose()");
  }

  @override
  void deactivate(){
    super.deactivate();
    log("in deactivate()");
  }

  @override
  void didUpdateWidget(WidgetLifecycle oldWidget){
    super.didUpdateWidget(oldWidget);
    log("In didUpdateWidget");
  }
}