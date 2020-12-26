import 'package:flutter/material.dart';

class CreateView extends StatelessWidget {
  CreateView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thêm mới"),
        backgroundColor: Color.fromRGBO(255, 210, 255, 100),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Tiêu đề',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            TextFormField(
                //placeholder: 'Title',
                //controller: titleController,
                ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Thêm Ảnh',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            //verticalSpaceSmall,
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                'Chạm để thêm ảnh',
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: SizedBox(
                width: 100,
                height: 45,
                child: RaisedButton(
                  color: Color.fromRGBO(218, 197, 255, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Thêm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
