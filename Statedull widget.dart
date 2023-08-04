import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: PersonalInfo()
));

class PersonalInfo extends StatefulWidget {
  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}
class _PersonalInfoState extends State<PersonalInfo> {
  int level = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
        title: Text('PersonalData'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1 ;
          });
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add_call,
          color: Colors.purple,
        ),

      ),

      body: Padding(
        padding : EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image 1.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.redAccent,
            ),

            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            Text(
              'Nikhil Sahu',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),
            Text(
              'Score',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),



            Text(
              'Phone No.',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            Text(
              '+91 9827925128',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),


            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),

                Text(
                  ' nikhilkumarsahu950@gmail.com',
                  style: TextStyle(
                    color: Colors.amberAccent,

                  ),
                )
              ],

            ),
            Row(
              children: <Widget> [
                Text('sri')
              ],
            )

          ],
        ),
      ) ,
    );
  }
}

