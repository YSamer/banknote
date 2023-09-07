import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class PolicyPage extends StatelessWidget {
  Future<String> _loadJsonData() async {
    return await rootBundle.loadString('assets/JSON/policy.json');
  }

  Future<List<dynamic>> _loadData() async {
    String jsonString = await _loadJsonData();

    final jsonResponse = await json.decode(jsonString);

    return jsonResponse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PolicyPage'),
      ),
      body: FutureBuilder(
        future: _loadData(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            List<dynamic> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(data[index]['title'],style: const TextStyle(fontSize: 18,),),
                  subtitle: Text(data[index]['description'],style: const TextStyle(fontSize: 12,),),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
