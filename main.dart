import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.blue[200]),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Dizilere Gidiş')),
      backgroundColor: Colors.red,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Diziye Gidiş '),
        ElevatedButton(
            child: Text('İlk Diziye Git'),
            onPressed: () {
              
              Route route=MaterialPageRoute(builder: (context){return Dizi1(); });
              
              Navigator.push(context,route);
              
              
              
            })
      ])),
    );
  }
}

class Dizi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('İlk Diziye Geldiniz')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
       
      (Image(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BNzVkYWY4NzYtMWFlZi00YzkwLThhZDItZjcxYTU4ZTMzMDZmXkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_.jpg'))),
          
        ElevatedButton(
            child: Text('İkinci Diziye Git'),
            onPressed: () {
              
              Route route=MaterialPageRoute(builder: (context){return Dizi2(); });
              
              Navigator.push(context,route);
              
              
              
            })
      
      
      
      
      
      ])),
      
    );
  }
}



class Dizi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('İkinci Ve Son Dizi')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            
        (Image(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BNjg1MDQ5MjQ2N15BMl5BanBnXkFtZTYwNjI5NjA3._V1_FMjpg_UX1000_.jpg'))),    
            
            
            
            
            
        
        ElevatedButton(child: Text('Ana Sayfaya Dön'), onPressed: () {
          
          
          
           Route route=MaterialPageRoute(builder: (context){return HomePage(); });
              
              Navigator.push(context,route);
          
           
          
          
        }),
       
      ])),
    );
  }
}
