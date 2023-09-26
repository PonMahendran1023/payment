import 'package:flutter/material.dart';
import 'main.dart';
void main (){
  runApp(Nave());
}
class Nave extends StatelessWidget {
  const Nave({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Worker(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Worker extends StatefulWidget {
  const Worker({super.key});

  @override
  State<Worker> createState() => _WorkerState();
}

class _WorkerState extends State<Worker> {
  var Set1=TextEditingController();
  var Set2='2000';
  var Set3='';
  var Set4='';
  var Set5='';
  var Set6='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User:Naveen'),
            Text('Availabel Balance:RS${Set2}'),

            Container(
              width: 500,
              child:  TextField(
                controller:Set1 ,
                decoration: InputDecoration(
                  hintText: "Amount",
                  border:OutlineInputBorder(),
                  suffixIcon: IconButton(onPressed: (){
                    Set1.clear();
                  },
                      icon:Icon(Icons.clear)
                  ),
                ),
                onChanged: (value){
                  setState(() {
                    Set3 =value;
                  }
                  );
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                var fisrtnum = int.parse(Set2);
                var secondnum = int.parse(Set3);
                var result = fisrtnum - secondnum;
                Set2 = result.toString();
                Set5='RS:${Set3} Payed Amount';
              }
              );
            },
                child:Text('Pay Money')
            ),
            Text('Transaction History:'),
            Container(
              width: 800,
              height:90,
              child: Text(Set5),
            ),
            Text('Switch Profile'),
            ElevatedButton(
                onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Work()));
            },
                child:Text('Mahi Account'))
          ],
        ),
      ),
    );
  }
}