import 'package:flutter_social_news/core/Widgets/hr.dart';
import 'package:flutter_social_news/helper/objectColor.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class CardHorizontal extends StatelessWidget{
  CardHorizontal ({
    bool showHr= false,
    String imgUrl='assets/files/login.jpg',
    String title ='عنوان',
    String text='تست',
    String link = 'ادامه مطلب',
    IconData icon = Icons.favorite_border,
    Function iconOnPressed,
    Function linkOnPressed
  }):
        showHr = showHr,
        imgUrl=imgUrl,
        title=title,
        text=text,
        link=link,
        icon=icon,
        iconOnPressed=iconOnPressed,
        linkOnPressed=linkOnPressed;

  bool showHr;
  String imgUrl;
  String title;
  String text;
  String link;
  IconData icon;
  Function iconOnPressed;
  Function linkOnPressed;

  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 12),
        child:
        Card(
            color: ObjectColor.cardBackground,
            child:Container(
                width: MediaQuery.of(context).size.width,
                child:
                Column(children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(12),
                      child:
                      Table(columnWidths: {
                        0: FixedColumnWidth(80),
                      },
                        children: [
                          TableRow(children: [
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child:
                              ClipOval(
                                child: Image.asset(imgUrl ,
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.only(left: 5,right: 12),
                              child: Column(children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(title,style: Style.h4(),)
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child:Text(text,
                                      style: Style.h5(),textAlign: TextAlign.justify,)
                                ),

                              ],),
                            ),
                          ])
                        ],)
                  ),
                  showHr == true? Hr():Container(height: 0,width: 0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Flexible(
                          fit: FlexFit.loose,
                          child:
                          TextButton(
                            child: Text(link,
                              style: Style.h5(color:  ObjectColor.base),
                            ),
                            onPressed: () {
                              if(linkOnPressed!=null){
                                linkOnPressed();
                              }
                            },
                          ),
                          // Text(
                          //   "subtitlsadsadasdasdasdas safdasf sfs asfe",
                          //   softWrap: false,
                          //   overflow: TextOverflow.fade,
                          // ),
                        ),
                        Flexible(
                            fit: FlexFit.loose,
                            child:
                            IconButton(icon: Icon(
                              icon,
                              size: 13,
                              color: ObjectColor.baseIcon,)
                                , onPressed: (){
                              if(iconOnPressed!=null)
                                iconOnPressed();
                            })
                        ),
                      ],),
                  )
                ],)
            )
        )
    );
  }
}