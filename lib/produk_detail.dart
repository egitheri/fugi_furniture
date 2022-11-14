import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  TextEditingController qty = TextEditingController(text: '2');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: Color(0xffEE3127),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage('assets/images/detail.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              transform: Matrix4.translationValues(0.0, -30, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wooden Coff',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Color(0xff4A4543)),
                      ),
                      Text(
                        '\$240',
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Color(0xff9A9390)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose a color :',
                        style: TextStyle(
                            color: Color(0xff7A8D9C),
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xff9A9390),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Color(0xff9A9390),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xffEEA427),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xffE3E3E3),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xff80450A),
                            radius: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Quality',
                        style: TextStyle(
                            color: Color(0xff7A8D9C),
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffEAEBEC)),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                              ),
                              color: Color(0xffFCFCFC),
                            ),
                            child: Center(
                              child: Icon(Icons.remove),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffEAEBEC)),
                              color: Color(0xffFCFCFC),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: qty,
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffEAEBEC)),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                              ),
                              color: Color(0xffFCFCFC),
                            ),
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Wrap(
                    children: [
                      Text(
                        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                        style: TextStyle(
                            color: Color(0xffADADAD),
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xff9A9390),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
