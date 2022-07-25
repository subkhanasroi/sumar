import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    Size m = MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: m.height * .2,
          color: Colors.lightBlueAccent,
          child: const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.table_rows_rounded,
                color: Colors.white,size: 24,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
