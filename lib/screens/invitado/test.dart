import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TestTest extends StatefulWidget {
  static String id = 'testtest';

  @override
  _TestTestState createState() => _TestTestState();
}

class _TestTestState extends State<TestTest> {
  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff3f51b5),
            height: 290,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(5),
                  topRight: const Radius.circular(5),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.card_membership),
          title: Text('MembresÃ­as'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Cursos'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Talleres'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Registrarse'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Salir'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/icon.svg",
                height: 25,
              ),
              onPressed: () => _onButtonPressed(),
            ),
          ),
        ),
        backgroundColor: Palette.primaryColor,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Palette.primaryColor,
                margin: const EdgeInsets.only(top: 1.0, bottom: 25.0),
                height: 60,
                width: double.infinity,
                child: Align(
                  alignment: Alignment(-0.6, 0),
                  child: Text("Cursos Destacados",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 26)),
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png"),
                            )),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de Python",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.ibb.co/ZHPxSf1/80-803501-javascript-logo-logo-de-java-script-png.png"),
                                    fit: BoxFit.cover)),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de JavaScript",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  "https://logos-world.net/wp-content/uploads/2021/08/Amazon-Web-Services-AWS-Logo.png"),
                            )),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de AWS",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://nodejs.org/static/images/blog/weekly-update/d7c62f3e-d94c-11e5-8ff8-f32c74b13cc3.png"),
                                    fit: BoxFit.cover)),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de Node JS",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        width: 280,
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Ver Todo",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 26,
                              )),
                        ))
                  ],
                ),
              ),
              Container(
                color: Palette.primaryColor,
                margin: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                height: 60,
                width: double.infinity,
                child: Align(
                  alignment: Alignment(-0.6, 0),
                  child: Text("Talleres Destacados",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 26)),
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png"),
                            )),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de Python",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.ibb.co/ZHPxSf1/80-803501-javascript-logo-logo-de-java-script-png.png"),
                                    fit: BoxFit.cover)),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de JavaScript",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  "https://logos-world.net/wp-content/uploads/2021/08/Amazon-Web-Services-AWS-Logo.png"),
                            )),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de AWS",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://nodejs.org/static/images/blog/weekly-update/d7c62f3e-d94c-11e5-8ff8-f32c74b13cc3.png"),
                                    fit: BoxFit.cover)),
                            width: 280,
                            height: 200,
                          ),
                          Container(
                            width: 280,
                            height: 40,
                            color: Colors.blue[800],
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Curso de Node JS",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ]),
                          )
                        ])),
                    Container(
                        width: 280,
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Ver Todo",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 26,
                              )),
                        ))
                  ],
                ),
              ),
              Container(
                color: Palette.primaryColor,
                margin: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                height: 60,
                width: double.infinity,
                child: Align(
                  alignment: Alignment(-0.75, 0),
                  child: Text("Membresias",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 26)),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 1.0, bottom: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3,
                            offset: Offset(2, 4), // Shadow position
                          ),
                        ],
                      ),
                      width: 390,
                      height: 250,
                      child: Card(
                        color: Colors.orange[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 130,
                                child: Icon(
                                  Icons.card_membership,
                                  size: 115,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 200,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Basica",
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28)),
                                      Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit. Odio eu feugiat pretium nibh ipsum consequat nisl vel.",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14)),
                                    ]),
                              ),
                            ]),
                      ),
                    ),
                    Column(children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1.0, bottom: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              offset: Offset(2, 4), // Shadow position
                            ),
                          ],
                        ),
                        width: 390,
                        height: 250,
                        child: Card(
                          color: Colors.red[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 130,
                                  child: Icon(
                                    Icons.card_membership,
                                    size: 115,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 200,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Bussiness",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28)),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit. Odio eu feugiat pretium nibh ipsum consequat nisl vel.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ]),
                                ),
                              ]),
                        ),
                      ),
                    ]),
                    Column(children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1.0, bottom: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              offset: Offset(2, 4), // Shadow position
                            ),
                          ],
                        ),
                        width: 390,
                        height: 250,
                        child: Card(
                          color: Colors.green[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 130,
                                  child: Icon(
                                    Icons.card_membership,
                                    size: 115,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 200,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Pro",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28)),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit. Odio eu feugiat pretium nibh ipsum consequat nisl vel.",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ]),
                                ),
                              ]),
                        ),
                      ),
                    ]),
                    Container(
                      color: Palette.primaryColor,
                      margin: const EdgeInsets.only(top: 25.0),
                      height: 60,
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Registrarse",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 29)),
                            Icon(
                              Icons.arrow_forward,
                              size: 29,
                              color: Colors.white,
                            ),
                          ]),
                    ),
                  ])
            ],
          ),
        ],
      ),
    );
  }
}
