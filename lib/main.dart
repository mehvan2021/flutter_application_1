import 'package:flutter/material.dart';

String _theName = 'Kurdistan';

String _Kflag =
    'https://w7.pngwing.com/pngs/404/151/png-transparent-iraqi-kurdistan-flag-of-kurdistan-kurdish-region-western-asia-fahne-flag.png';
String _Iflag =
    'https://img.freeflagicons.com/thumb/glossy_round_icon/india/india_640.png';
String _Tflag =
    'https://gogeticon.net/files/156/3d6e17de3df5679d4e259e43528a1f6f.png';

String _Header =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsJC1bqQO80POsvwd-LtIJ54c4bzGuwcdVWQ&usqp=CAU';

String _Answer = "";

void main() {
  runApp(hellooKurdistan());
}

class hellooKurdistan extends StatefulWidget {
  const hellooKurdistan({Key? key}) : super(key: key);

  @override
  State<hellooKurdistan> createState() => _hellooKurdistanState();
}

class _hellooKurdistanState extends State<hellooKurdistan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("helloo which one is $_theName Flag"),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
              ),
              Container(
                child: Center(
                  child: Text('Your answer is $_Answer'),
                ),
              ),
              Image(
                image: NetworkImage("$_Header"),
                width: 255,
                height: 255,
              ),
              Center(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _Header = _Kflag;
                          _Answer = "True";
                        });
                      },
                      child: Container(
                          width: 140, child: Image.network('$_Kflag')),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _Header = _Iflag;
                          _Answer = "False";
                        });
                      },
                      child: Container(
                          width: 140, child: Image.network('$_Iflag')),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _Header = _Tflag;
                          _Answer = "False";
                        });
                      },
                      child: Container(
                          width: 140, child: Image.network('$_Tflag')),
                    ),
                  ],
                ),
              ),
              Center(),
            ],
          ),
        ),
      ),
    );
  }
}
