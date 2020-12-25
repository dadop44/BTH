import 'package:bth/view/create_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'MyNote',
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(218, 197, 255, 100),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateView()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //verticalSpace(35),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  //child: Image.asset(name),
                )
              ],
            ),
            //Expanded(
            //child: ListView.builder(
            //itemCount: 3,
            //itemBuilder: (context, index) => postItem(
            //post: Post(title: '$index Title'),
            //),
            //),
          ],
        ),
      ),
    );
  }
}
