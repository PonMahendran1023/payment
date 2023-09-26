import 'package:flutter/material.dart';
import 'Naveen.dart';
void main (){
  runApp(Work());
}
class Work extends StatelessWidget {
  const Work({super.key});

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
  var Set2='1000';
  var Set3='';
  var Set5='';
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
            Text('User:MAHI'),
            Text('Availabel Balance:RS:${Set2}'),
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
              child:Text('Pay Money'),
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Nave()));
              },
              child:Text('Naveen Account'),
            ),

          ],
        ),
      ),
    );
  }
}