import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minggu2/data/cat_data.dart';
import 'package:minggu2/model/cat_model.dart';
import 'package:minggu2/screen/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
       title: Text
       (
        'mcs bab2',
        style: TextStyle
        (
          color: Colors.white,
          
        ),
       ),
       centerTitle: true,
          backgroundColor: Colors.grey[800],
      ),
      body: ListView
      (
        children: 
        [
          const SizedBox
          (
            height: 32,
          ),
          Center
          (
            child: Text
            (
              "jenis-jenis kucing",
              style: GoogleFonts.oswald
              (
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        const SizedBox
        (
          height: 24,
        ),
        ListView.builder
        (
          itemCount: cats.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index)
          {
            CatModel cat = cats[index];
            return Container
            (
            margin: const EdgeInsets.symmetric
            (
              vertical: 12,
              horizontal: 18,
            ),
            child: GestureDetector
            (
              child: Row
            (
              children: 
              [
                SizedBox
                (
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/4,
                  child: ClipRRect
                  (
                    borderRadius: BorderRadiusGeometry.circular(18),
                    child: Image.network(cat.urlImage, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox
                (
                  width: 14
                ),
                Text
                (
                  cat.name,
                  style: GoogleFonts.oswald
                  (
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            onTap: () 
            {
              Navigator.push
              (
                context,
                MaterialPageRoute
                (
                  builder: (context)
                  {
                    return Detailpage(catModel: cat);
                  }
                )
              );
            }
            )
            
            );

          }
        )
        ],
      ),
    );
  }
}