import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Image> movies = [
    Image.asset('assets/peli1.jpg'),
    Image.asset('assets/peli2.jpg'),
    Image.asset('assets/peli3.jpg'),
    Image.asset('assets/peli4.jpg')
  ];
  TextStyle _style =
      GoogleFonts.getFont('Lato', color: Colors.white, fontSize: 18);
  TextStyle _style2 =
      GoogleFonts.getFont('Ubuntu', color: Colors.grey, fontSize: 14);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black54,
          iconSize: 30,
          selectedItemColor: Colors.red,
          unselectedFontSize: 10,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                label: 'Proximamente'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_done_outlined), label: 'Descargas')
          ],
          onTap: (int index) {
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                          child: Expanded(
                              child: Image.asset('assets/netflix.jpg')),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(260, 0, 0, 0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Icon(
                            Icons.photo_album,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0)),
                        Text('Series', style: _style),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Peliculas', style: _style),
                        SizedBox(width: 20),
                        Text('Categorias', style: _style),
                        Icon(
                          Icons.expand_more,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 210,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/pelicula3png.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0)),
                        Text(
                          'Suspenso · Misterio · Accion · Ficcion · Emocion ',
                          style: _style2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 2, 0, 0),
                          child: OutlinedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const Second()),
                              // );
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                       Second()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                  size: 35,
                                ),
                                Text(
                                  "Mi lista",
                                  style: GoogleFonts.getFont('Lato',
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                          child: OutlinedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Reproducir",
                                  style: GoogleFonts.getFont('Lato',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.info_outline,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                                Text(
                                  "Informacion",
                                  style: GoogleFonts.getFont('Lato',
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                        Text(
                          "Mi Lista",
                          style: GoogleFonts.getFont("Lato",
                              color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 700,
                    child: ListView.separated(
                      itemBuilder: (context, index) => SizedBox(
                        child: movies[index],
                        height: 5,
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        height: 10,
                        color: Colors.yellow,
                      ),
                      itemCount: movies.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Second()),
            );
          },
          child: Icon(Icons.shuffle_outlined, color: Colors.black),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  static const List<Widget> _widgetOption = [
    Text('Index 0: Home'),
    Text('Index 1: Proximamente'),
    Text('Index 2: Descargas'),
  ];
}

class Second extends StatelessWidget {
  Second({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var isActive = true;
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title:  Text('Mi Lista', style: GoogleFonts.getFont('Poppins', color: Colors.white ),),
          // leading: ElevatedButton(onPressed: (){ Navigator.of(context).pop('/HomePage');} , child: Icon(Icons.backpack_outlined) ,),
        ),
        body: SafeArea(
          
          child: Column(
            children: [
              ListTile(
                leading: Image.asset("assets/peli1.jpg"),
                
                title: const Text('La casa de Papel'),
                subtitle: const Text('Drama'),
                trailing: const Icon(Icons.play_arrow_outlined),
                dense: true,
                selected: true,
                enabled: true,
                
              ),
              ListTile(
                leading: const Icon(Icons.schedule),
                title: const Text('Karate Kid'),
                subtitle: const Text('Accion'),
                trailing: const Icon(Icons.play_arrow_outlined),
                dense: true,
                selected: true,
                enabled: isActive,
              )
            ],
          ),
        ),
      
    );
  }
}
