import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is Check",
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    bool cheese = false;
  bool bacon = false;
  bool fired = false;
  bool source = false;

  double burger = 6.5;
  double getSelectedLanguages() {
      double total = 0;
      if(cheese){
        total += 1;
      }
      if(bacon){
        total += 1.5;
      }
      if(fired){
        total += 1;
      }
      if(source){
        total += 0.5;
      }
      if(burger > 0){
        total += burger;
      }
      return total;
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            
            Text('Classic Burger ', style: TextStyle(fontSize: 20),),
            Text('6.5'),
            Text('Customize your burger ', style: TextStyle(fontSize: 20),),
            CheckboxListTile(title: Text('Extra Cheese'),
           subtitle: Text('+1.00'),
            value: cheese, onChanged: (value){
              //make text and checkbox width near to each other
              setState(() {
                cheese = value!;
              });
            }),
            CheckboxListTile(title: Text('Bacon'),subtitle: Text('+1.50'),value: bacon, onChanged: (value){
              setState(() {
                bacon = value!;
              });
            }),
            CheckboxListTile(title: Text('Fired'),
            subtitle: Text('+1.00'),value: fired, onChanged: (value){
              setState(() {
                fired = value!;
              });
            }),
            CheckboxListTile(title: Text('Source'),
            subtitle: Text('+0.50'),value: source, onChanged: (value){
              setState(() {
                source = value!;
              });
            }),
            SizedBox(height: 10,),
            Text('total: ${getSelectedLanguages()}', style: TextStyle(fontSize: 20),)
           
          ],
          
        ),
      ),
    );
  }
}