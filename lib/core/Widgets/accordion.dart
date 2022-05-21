import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper/objectColor.dart';
import '../../helper/textStyle.dart';

class Accordion extends StatefulWidget {
  final String label;
  final Widget obj;
  final IconData icon ;

  const Accordion({Key key, this.label, this.obj, this.icon = Icons.home})
      : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ObjectColor.cardBackground,
      child: Column(children: [
        InkWell(
          onTap: (){setState(() {
            _showContent = !_showContent;
          });
          },
          onHover: (value) {
            setState(() {
              _isHovered = value;
            });
          },
          child:
          ListTile(
            title: Row(children: [
              Icon(
                widget.icon,
                size:18,
                color: ObjectColor.base,
              ),
              Container(margin: const EdgeInsets.only(left: 10.0)
              ),
              Text(widget.label,style: Style.h4()),
            ],) ,
            trailing:Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
          ),
        ),
        _showContent
            ? Container(
          padding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: widget.obj,
        )
            : Container()
      ]),
    );
  }
}