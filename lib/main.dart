import 'package:flutter/material.dart';
import 'package:itfood/web_view_container.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    /*routes: {
      '/': (context) => WebViewForm(),
      '/webView':(context) => WebViewContainer()
    },*/
    home: WebViewContainer(),
  )
);

class WebViewForm extends StatefulWidget {
  const WebViewForm({super.key});

  @override
  State<WebViewForm> createState() => _WebViewFormState();
}

class _WebViewFormState extends State<WebViewForm>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ITFOOD"),
      ),
      body: content(),
    );
  }


  Widget content(){
    return Center(
      child:ElevatedButton(
        onPressed:() {
          Navigator.of(context).pushNamed('/webView');
        }, 
        child: const Text("Abrir navegador"))
    );
  }


}


