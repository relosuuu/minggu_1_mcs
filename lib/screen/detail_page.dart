import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minggu2/model/cat_model.dart';

class Detailpage extends StatefulWidget
{
  CatModel catModel;
  Detailpage({super.key, required this.catModel});

@override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> 
{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
        widget.catModel.name,
        style: GoogleFonts.oswald(fontSize: 16, fontWeight: FontWeight.w600),
        textAlign: TextAlign.justify
        ),
        centerTitle: true,
        ),
        body: ListView
        (
          children: 
          [
            Image.network(widget.catModel.urlImage),
            const SizedBox(height: 18),

            Container
            (
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: Text
              (
                widget.catModel.desc,
              style: GoogleFonts.oswald(fontSize: 16),
              textAlign: TextAlign.justify,
              ), 
            )
          ],
        ),
    );
  }
}