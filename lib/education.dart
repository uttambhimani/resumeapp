import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resumeapp/model.dart';

void pdfGen(Model m1)async{

  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context){
          return pw.Padding(
            padding: const pw.EdgeInsets.all(12.0),
            child: pw.Column(
              children: [
                pw.Container(
                  height: 150,
                  width: double.infinity,
                  color: PdfColors.grey400,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.all(10.0),
                    child: pw.Row(
                      children: [
                        pw.Container(
                          height: 100,
                          width: 90,
                          color: PdfColors.grey400,
                          // child: pw.Image.asset(m1.image.toString()),
                        ),

                        pw.SizedBox(width: 30,),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.name}",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 25),),
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.number}"),
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.email}"),
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.add}")
                          ],
                        )
                      ],
                    ),
                  ),
                ),


                //About
                pw.SizedBox(height: 20,),
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("About",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container (
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Text("${m1.about}",style: pw.TextStyle(fontSize: 16),),
                pw.SizedBox(height: 40,),


                //Skills
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Skills",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container(
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Align(
                  alignment: pw.Alignment.topLeft,
                  child: pw.Text("${m1.s1}\n${m1.s2}\n${m1.s3}\n${m1.s4}",style: pw.TextStyle(fontSize: 16),),),
                pw.SizedBox(height: 40,),


                //projects
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Projects",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container(
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Align(
                  alignment: pw.Alignment.topLeft,
                  child: pw.Text("${m1.p1}\n\n${m1.p2}",style: pw.TextStyle(fontSize: 16),),
                ),
                pw.SizedBox(height: 40,),


                //Education
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Education",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container(
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Align(alignment: pw.Alignment.topLeft,child: pw.Text("${m1.dgree}",style: pw.TextStyle(fontSize: 19,fontWeight: pw.FontWeight.bold),)),
                pw.SizedBox(height: 5,),
                pw.Align(alignment: pw.Alignment.topLeft,child: pw.Text("${m1.school}",style: pw.TextStyle(fontSize: 16),)),
                pw.SizedBox(height: 5,),
                pw.Align(alignment: pw.Alignment.topLeft,child: pw.Text("CGPA : ${m1.mark}",style: pw.TextStyle(fontSize: 16),)),
              ],
            ),
          );
        }
    ),
  );

  Directory? dir = await getDownloadsDirectory();

  File k1 = File("${dir!.path}/mypdf.pdf");

  print("=======${k1.path}");
  k1.writeAsBytes(await pdf.save());

}




void pdfGen1(Model m1)async{

  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context){
          return pw.Row(
            children: [
              pw.Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  pw.Container(
                    padding: pw.EdgeInsets.all(11),
                    height: 900,
                    width: 150,
                    color: PdfColors.blue,
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.only(top: 10),
                          height: 100,
                          width: 100,
                          // child: Imagefile()
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.name}",
                            style: pw.TextStyle(fontSize: 35,fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.number}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.email}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.add}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height:5,),

                      ],
                    ),
                  ),
                ],
              ),
              pw.Expanded(
                child: pw.Container(
                  padding: pw.EdgeInsets.only(left: 5,right: 5),
                  height: 900,
                  width: 100,
                  color: PdfColors.white,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 5,right: 5),
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Text("Education",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.dgree}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.school}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Skills",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.s3}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Projects",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.p1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.p2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                      ],
                    ),
                  ),
                ),
              )

            ],
          );
        }
    ),
  );

  Directory? dir = await getDownloadsDirectory();

  File k1 = File("${dir!.path}/mypdf1.pdf");

  print("=======${k1.path}");
  k1.writeAsBytes(await pdf.save());

}
void pdfGen2(Model m1)async{

  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context){
          return pw.Row(
            children: [

              pw.Expanded(
                child: pw.Container(
                  padding: pw.EdgeInsets.only(left: 5,right: 5),
                  height: 900,
                  width: 100,
                  color: PdfColors.white,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 5,right: 5),
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Text("Education",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.dgree}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.school}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Skills",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.s3}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Projects",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.p1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.p2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),

                      ],
                    ),
                  ),
                ),
              ),
              pw.Column(
                children: [
                  pw.Container(
                    padding: pw.EdgeInsets.all(11),
                    height: 900,
                    width: 150,
                    color: PdfColors.brown,
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.only(top: 10),
                          height: 100,
                          width: 100,
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.white,
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.name}",
                            style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.number}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.email}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.add}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height:30,),


                      ],
                    ),
                  ),
                ],
              ),

            ],
          );
        }
    ),
  );

  Directory? dir = await getDownloadsDirectory();

  File k1 = File("${dir!.path}/mypdf2.pdf");

  print("=======${k1.path}");
  k1.writeAsBytes(await pdf.save());

}