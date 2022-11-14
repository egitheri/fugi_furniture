import 'package:flutter/material.dart';
import 'package:fugi_furniture/widgets/kategori_widget.dart';
import 'package:fugi_furniture/widgets/produk_widget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 250) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          backgroundColor: Color(0xffF8F8F8),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {}, icon: Image.asset('assets/icons/icon.png')),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 200,
                child: Text(
                  'Discover the most modern furniture',
                  style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 33,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    KategoriWidget(
                      title: 'All',
                      status: true,
                    ),
                    KategoriWidget(
                      title: 'Living Room',
                      status: false,
                    ),
                    KategoriWidget(
                      title: 'Bedroom',
                      status: false,
                    ),
                    KategoriWidget(
                      title: 'Dining Room',
                      status: false,
                    ),
                    KategoriWidget(
                      title: 'Kitchen',
                      status: false,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                'Recommended Furnitures',
                style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: (itemWidth / itemHeight),
                  children: [
                    ProdukWidget(
                        image: 'produk1.png',
                        title: 'Stylish Chair',
                        price: '\$170',
                        rating: '5.0'),
                    ProdukWidget(
                        image: 'produk2.png',
                        title: 'Modern Table',
                        price: '\$170',
                        rating: '5.0'),
                    ProdukWidget(
                        image: 'produk3.png',
                        title: 'Wooden Console',
                        price: '\$170',
                        rating: '5.0'),
                    ProdukWidget(
                        image: 'produk4.png',
                        title: 'Brown Armchair',
                        price: '\$170',
                        rating: '5.0'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xff9A9390)),
                child: Image.asset(
                  'assets/icons/home.png',
                ),
              ),
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  // color: Color(0xff9A9390),
                ),
                child: Image.asset(
                  'assets/icons/shop.png',
                ),
              ),
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  // color: Color(0xff9A9390),
                ),
                child: Image.asset(
                  'assets/icons/start.png',
                ),
              ),
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  // color: Color(0xff9A9390),
                ),
                child: Image.asset(
                  'assets/icons/user.png',
                ),
              ),
            ],
          ),
        )
        // BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.home),
        //       ),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Profil',
        //     ),
        //   ],
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        // ),
        );
  }
}
