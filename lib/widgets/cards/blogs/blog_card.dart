import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants.dart';

blogCard(title,subtitle,description,image){
  return Container(
    width: Get.width,
    height: 150,
    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
    decoration: BoxDecoration(
      color: Constant.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 2.5,
          offset: Offset(1, 1), // Shadow position
        ),
      ],
    ),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage(image),
                width: 130,
                height: 130,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toString().toUpperCase(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      subtitle.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      description,
                      overflow: TextOverflow.fade,
                      maxLines: 2,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.mode_edit_outlined,color: Colors.green,),
                        Text(" / "),
                        Icon(Icons.delete_forever_outlined,color: Colors.red,),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}