
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('   Apply today!', style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.justify,
          ),
          toolbarHeight: 100,
          backgroundColor: Colors.brown.shade500,
          foregroundColor: Colors.white,
        ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Padding(padding: EdgeInsets.all(20),
          child: TextField(
            style: TextStyle(
              color: Colors.brown.shade500,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration
              (
              hintText: 'Your first name',
              hintStyle: TextStyle(
                color:Colors.brown.shade200,
              ),
                label: Text('First Name'),
              labelStyle: TextStyle
                (
                color:Colors.brown.shade500,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(width:2, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width:2, color: Colors.brown.shade200),
                borderRadius: BorderRadius.circular(8),
              ),
              fillColor: Colors.grey.shade300,
              filled: true,
            ),
          ),
           ),
           Padding(padding: EdgeInsets.all(20),
             child: TextField(
               style: TextStyle(
                 color: Colors.brown.shade500,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
               decoration: InputDecoration
                 (
                 hintText: 'Your last name',
                 hintStyle: TextStyle(
                   color:Colors.brown.shade200,
                 ),
                 label: Text('Last Name'),
                 labelStyle: TextStyle
                   (
                   color:Colors.brown.shade500,
                   fontWeight: FontWeight.bold,
                   fontSize: 22,
                 ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(width:2, color: Colors.grey.shade300),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(width:2, color: Colors.brown.shade200),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 fillColor: Colors.grey.shade300,
                 filled: true,
               ),
             ),
           ),
           Padding(padding: EdgeInsets.all(20),
             child: TextField(
               style: TextStyle(
                 color: Colors.brown.shade500,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
               decoration: InputDecoration
                 (
                 hintText: 'you@email.com',
                 hintStyle: TextStyle(
                   color:Colors.brown.shade200,
                 ),
                 label: Text('Email'),
                 labelStyle: TextStyle
                   (
                   color:Colors.brown.shade500,
                   fontWeight: FontWeight.bold,
                   fontSize: 22,
                 ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(width:2, color: Colors.grey.shade300),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(width:2, color: Colors.brown.shade200),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 fillColor: Colors.grey.shade300,
                 filled: true,
               ),
             ),
           ),
           Padding(padding: EdgeInsets.all(20),
             child: TextField(
               style: TextStyle(
                 color: Colors.brown.shade500,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
               decoration: InputDecoration
                 (
                 hintText: 'linkedin.com',
                 hintStyle: TextStyle(
                   color:Colors.brown.shade200,
                 ),
                 label: Text('Linkedin'),
                 labelStyle: TextStyle
                   (
                   color:Colors.brown.shade500,
                   fontWeight: FontWeight.bold,
                   fontSize: 22,
                 ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(width:2, color: Colors.grey.shade300),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(width:2, color: Colors.brown.shade200),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 fillColor: Colors.grey.shade300,
                 filled: true,
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.all(20),
             child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   minimumSize: Size(200, 50),
                   backgroundColor: Colors.brown.shade500,
                   foregroundColor: Colors.white,
                   shape:RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(9),
                   )


    ),
                 onPressed: (){
                  showDialog(context: context, builder: (context)
                      {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('Submission!', style: TextStyle(color: Colors.brown.shade700)),
                          content: Text('Do you want to submit?', style: TextStyle(color: Colors.brown.shade700)),
                          actions: [
                            ElevatedButton(onPressed: (){
                               ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBar(
                                     content: Text('Successfully submitted.', style: TextStyle(color:Colors.white),),
                                     backgroundColor: Colors.brown.shade700,
                                   )
                               );
                                Navigator.of(context).pop();
                            },
                                child: Text('Yes', style: TextStyle(color: Colors.brown.shade700))),
                            ElevatedButton(onPressed: (){
                               Navigator.of(context).pop();
                            },
                                child: Text('No', style: TextStyle(color: Colors.brown.shade700)))

                          ],
                        );
                      }
                  );


                 },


                 child:
                     Text('Submit', style: TextStyle(fontSize: 19))


             ),
           )

         ],



    )

    );
  }
}