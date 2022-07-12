import 'package:api2/currency_service.dart';
import 'package:api2/get_currency_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("API 2"),
      ),
      body: FutureBuilder(
        future: CurrencyService.getData(),
        builder: (context, AsyncSnapshot<Welcome> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Text("Erro: "+snapshot.data!.error.toString(),),
                      SizedBox(height: 12,),
                      Text("Category: "+snapshot.data!.category.toString()),
                      SizedBox(height: 12,),
                      Text("Type: "+snapshot.data!.type.toString()),
                      SizedBox(height: 12,),
                      Text("Delivery: "+snapshot.data!.delivery.toString()),
                      SizedBox(height: 12,),
                      Text("Lang: "+snapshot.data!.lang.toString()),
                      SizedBox(height: 12,),
                      Text("Id: "+snapshot.data!.id.toString()),
                      SizedBox(height: 12,),
                      Text("Safe: "+snapshot.data!.safe.toString()),
                    ],
                  ),
                );
              },
              itemCount: 1,
            );
          }
        },
      ),
    );
  }
}
