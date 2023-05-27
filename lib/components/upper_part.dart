import 'package:flutter/material.dart';

import '../constant.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('0', style: TextStyle( color: textColor, fontSize: 40),),
              SizedBox(height: 20,),
              Text('0', style: TextStyle( color: textColor, fontSize: 40),)
            ],
          ),
        ],
      ),
    );
  }
}
