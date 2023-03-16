

import 'package:flutter/material.dart';
import 'generated/l10n.dart';
import 'hover.dart';


 List<String> list = <String>['CONTRACT', 'Contract Benifits', 'Costs'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = 'CONTRACT';
  final List _isHovering = [
    false,
    false,
    false,

  ];
bool isHovered=true;

  @override
  Widget build(BuildContext context) {
    return /*InkWell(
      child: DropdownButton<String>(
        value: dropdownValue,
        dropdownColor: Colors.white,
        // icon: const Icon(Icons.arrow_downward),
        icon: SizedBox.shrink(),
        //elevation: 16,
        //  style: ktextstyle,
        hint: OnHover(
          builder: (isHovered){
          return Text(S.of(context).contract,
            style: TextStyle(
                //fontFamily: 'Montserrat',
                fontSize: 16,
                //fontWeight: FontWeight.bold,
               // color: Color(0xFFED7826)
              color: _isHovering[0]
                  ? Color(0xFFED7826)
                  : Colors.black,
            ),);
          }
        ),
        underline: SizedBox(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
            if(dropdownValue=='CONTRACT'){
              Navigator.pushNamed(context, '/second');
            }
            if(dropdownValue=='Contract Benifits'){
              Navigator.pushNamed(context, '/third');
            }
            if(dropdownValue=='Costs'){
              Navigator.pushNamed(context, '/fourth');
            }

          });
        },

        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: OnHover(
              builder: (isHovered) {
                return Text(value, style: TextStyle(
                  //fontFamily: 'Montserrat',
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                   color: Color(0xFFED7826)
                ),);
              }
            ),
          );
        }).toList(),
      ),
      onTap: (){

      },
    );*/ DropdownButtonHideUnderline(
      child: DropdownButton(
          hint: Text(S.of(context).contract,style: TextStyle(
            color: _isHovering[0]
                ? Color(0xFFED7826)
                : Colors.black,
            //fontWeight: FontWeight.bold,
            fontSize: 16,

          ),),
          icon: SizedBox.shrink(),
          items:  [
      DropdownMenuItem(
        value: 'contract',
      child: Text( S.of(context).whycontract),),
      DropdownMenuItem(
        value: 'contractbenefits',
      child: Text( S.of(context).contractbenefits),
      ),
            DropdownMenuItem(
              value: 'cost',
              child: Text( S.of(context).cost ),
            ),
          ],
        onChanged: ( String? value) {
          setState(() {

            if(value=='contract'){
              value=S.of(context).whycontract;
              Navigator.pushNamed(context, '/second');
            }
            if(value=='contractbenefits'){
              Navigator.pushNamed(context, '/third');
            }
            if(value=='cost'){
              Navigator.pushNamed(context, '/fourth');
            }
          });
        },
      ),
    );
  }
}
