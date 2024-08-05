import 'package:flutter/material.dart';
import 'package:to_do_app/schedules.dart';
class myhomepage extends StatefulWidget {
  myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}
class _myhomepageState extends State<myhomepage>{
  final _controller = TextEditingController();
  List schedules = [
    ['Morning walk ',false],
    ['Meeting with boss',false],


  ];
  void checked(int index){
    setState((){
      schedules[index][1] = !schedules[index][1];
    });
  }
  void Addremainder(){
    setState(() {
      schedules.add([_controller.text,false]);
      _controller.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: Text('Reminders',
        ),
        backgroundColor:Colors.teal,
        foregroundColor: Colors.black54,

      ),
      body: ListView.builder(itemCount: schedules.length, itemBuilder:(BuildContext context,index){
        return schedule(
          Name: schedules[index][0],
          completed: schedules[index][1],
          onChanged: (value)=> checked(index),

        );
      }
      ),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 19),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: ' New Remainder',
                  filled: true,
                  fillColor: Colors.teal.shade100,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(16),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: Addremainder,
            child:  const Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
