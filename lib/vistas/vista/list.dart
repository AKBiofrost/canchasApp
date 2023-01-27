import 'package:flutter/material.dart';

class list extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){

    return NoteListState();

  }

}

class NoteListState extends State<list>{
  int count=0 ;
  @override

  Widget build(BuildContext context){

    return Scaffold(


      body: getNotelistView(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('FAB clicked');
        },
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }
  ListView getNotelistView(){

   // TextStyle titleStyle= Theme.of(context).textTheme.bodyMedium;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position){
        return Card(

          color: Colors.white,
          elevation: 2.0,
          child:ListTile(

            leading: CircleAvatar(
              backgroundColor:Colors.lightBlue,
              child: Icon(Icons.cloud),
            ),
            title:  Text('Dummy title'),
            trailing: Icon(Icons.delete, color:Colors.grey),
            onTap: (){
              debugPrint("Listtile tapped");
            },
          )
        );

      },
    );

  }
}