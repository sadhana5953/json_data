
import 'package:flutter/material.dart';
import 'package:json_data/screen/8.1%20json%20parsing/provider/jsonProvider.dart';
import 'package:provider/provider.dart';

class jsonViewPage extends StatelessWidget {
  const jsonViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    jsonProvider jsonProviderFalse =
    Provider.of<jsonProvider>(context, listen: false);
    jsonProvider jsonProviderTrue =
    Provider.of<jsonProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Parsing'),
      ),
      body: ListView.builder(
        itemCount: jsonProviderTrue.imageList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:NetworkImage ('${jsonProviderTrue.imageList[index].url}'),
                  )
              ),
            ),
            subtitle: Text('${jsonProviderTrue.imageList[index].title}'),
          ),
        ),
      ),
    );
  }
}

