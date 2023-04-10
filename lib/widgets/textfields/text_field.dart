import 'package:flutter/material.dart';

textfield(controller,name,icon){
  return Container(
    margin:const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border:const OutlineInputBorder(),
        labelText: name,
        prefixIcon: Icon(icon),
      ),
    ),
  );
}