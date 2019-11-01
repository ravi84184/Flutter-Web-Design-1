import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("PRODUCT X",style: TextStyle(color: Colors.white,fontSize: 18.0),),
        MediaQuery.of(context).size.width >800?Row(
          children: <Widget>[
            menuItem("FEATURES"),
            menuItem("PRICING"),
            menuItem("SUPPORT"),
            RaisedButton(onPressed: (){},child: Text("REQUEST EARLY ACCESS"),color: Colors.white,textColor: Colors.yellow[900],)
          ],
        ):Icon(Icons.menu,color: Colors.white,),
      ],
    );
  }


  Widget menuItem(title){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 14),
      child: Text(title,style: TextStyle(color: Colors.white),),
    );
  }
}
