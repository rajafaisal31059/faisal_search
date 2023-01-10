import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121315),
      appBar: AppBar(
        backgroundColor: Color(0xff121315),
        elevation: 20,
        centerTitle: false,
        title: Text(
          'Search',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.arrow_back),
        actions: [
          const Icon(Icons.settings),
          SizedBox(
            width: 23,
          ),
        ],
      ),
      body: SafeArea(

      child: Column(
        children: [


          
          Row(
            children: [
              const SearchField(),

              SizedBox(width: 10,),

              Text('Cancel', style: TextStyle(color: Colors.white,),),

              SizedBox(height: 30,),
            ],
          ),
       Divider(),
          
          
          
          //SPACE FOR CURRENCIES
              Text('BTC',style: TextStyle(color: Colors.white),),
              Text('Ethereum',style: TextStyle(color: Colors.white),),
              Text('Tether',style: TextStyle(color: Colors.white),),


          
          
          
          
        ],
      ),
    )
    );
  }
}

//SearchField Class
class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
            width: 300,
            height: 50.0,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Colors.white.withOpacity(0.4), width: 1.5),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.4),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    hintText: 'Search Cryptocurrency',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                  ),
                  style: TextStyle(color: Colors.white),
                )),
              ],
            )));
  }
}

class cryptos extends StatelessWidget {
  const cryptos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        cryptoItem(
            name: 'Bitcoin',
            description: 'BTC',
            value: '\$2,509.75',
            growth: 9.7),
      ],
    );
  }
}

class cryptoItem extends StatelessWidget {

  const cryptoItem(
      {Key? key,
      required  this.name,
       required this.description,
       required  this.growth, required this.value})
      : super(key: key);
  final String name;
  final String description;
  final String value;
  final double growth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,

    );
  }
}
