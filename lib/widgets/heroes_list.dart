import 'package:flutter/material.dart';
import 'package:heroes/services/hero_api_provider.dart';

class HeroesList extends StatelessWidget {
  const HeroesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HeroApiProvider provider = HeroApiProvider();
    // final heroes = provider.getHeroes();
    return FutureBuilder(
        future: provider.getHeroes(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (snapshot.connectionState == ConnectionState.none) {
            return const Center(child: Text('Data not found!!!'));
          }
          else if (snapshot.connectionState == ConnectionState.active) {
            return const Center(child: Text('active'));
          }
          else if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) => Row(
                      children: <Widget>[
                        Image.network(
                         snapshot.data[index].imageURL,
                          // fit: BoxFit.cover,
                          width: 200,
                          height: 120,
                        ),
                        Center(child: Text(snapshot.data[index].name))
                      ],
                    ));
          }
          else {
            return const Center(child: Text('default'));
          }
        }
      );
  }
}
