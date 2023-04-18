import 'package:flutter/material.dart';
import 'package:plus_minus_with_provider/Counter/Provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade200,
        centerTitle: true,
        title: Text("Counter Game",style: TextStyle(
          color: Colors.white,fontSize: 22,letterSpacing: 2,
        ),),
        leading: Center(
          child: Icon(Icons.videogame_asset,color: Colors.white,)
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.asset('assets/images/math.png',height: 300,width: 300,),
            SizedBox(height: 20),
            Consumer<CounterProvider>(
              builder: (context, value, child) => Text("${value.i}",style: TextStyle(color: Colors.black,fontSize: 50,),)),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<CounterProvider>(context,listen: false).clear();
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("Clear",style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<CounterProvider>(context,listen: false).plus();
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("+ 1",style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<CounterProvider>(context,listen: false).minus();
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("- 1",style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<CounterProvider>(context,listen: false).two();
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("2 X",style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Provider.of<CounterProvider>(context,listen: false).four();
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("4 X",style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
