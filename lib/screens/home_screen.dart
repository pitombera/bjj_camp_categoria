import 'package:bjj_camp_categoria/rounded_box.dart';
import 'package:bjj_camp_categoria/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inicializando para acesso aos atributos
    SizeConfig().init(context);
    final Color _corFaixa = Colors.white;
    final Color _corTarja = Colors.black;

    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        // Cor de Fundo
        color: Color(0xffACBCD0),
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.blockSizeVertical!*30,
                decoration: BoxDecoration(
                  color: _corFaixa,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3)
                      )
                    ]
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.screenWidth!-(SizeConfig.blockSizeHorizontal!*25)),
                child: SizedBox(
                    width: SizeConfig.blockSizeHorizontal!*15,
                    height: SizeConfig.blockSizeVertical!*30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: _corTarja,
                      ),
                    ),
                ),
              ),
              Positioned(
                  top: SizeConfig.blockSizeVertical!*18,
                  left: (SizeConfig.blockSizeHorizontal!*30),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff757272FF),
                    //radius: 70,
                    radius: SizeConfig.blockSizeHorizontal!*20,
                    child: CircleAvatar(
                      radius: (SizeConfig.blockSizeHorizontal!*20)-2,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C5603AQHoSpdckpj-6Q/profile-displayphoto-shrink_100_100/0/1516946960711?e=1641427200&v=beta&t=98EvJ8QgUmoysBAAKl-fhptW89UJAj1eOA3g3iKKzDc"),
                    ),
                  )
              ),
              Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.blockSizeVertical!*30,
                  color: Colors.transparent,
                  child: Center(
                    child: Text("Diego Pitombeira", textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, SizeConfig.blockSizeVertical!*42, 16, 40),
                child: Column(
                  children: [
                    RoundedBox(label: "IDADE", child: Text("34 ANOS", style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xff47525E), fontSize: 14, fontWeight: FontWeight.bold)))),
                    RoundedBox(label: "PESO", child: Text("110 KG", style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xff47525E), fontSize: 14, fontWeight: FontWeight.bold)))),
                    RoundedBox(label: "CATEGORIA", child: Text("MASTER - PESADÍSSIMO", style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xff47525E), fontSize: 14, fontWeight: FontWeight.bold)))),
                    RoundedBox(label: "TEMPO",
                        child: Row(
                          children: [
                            Icon(Icons.schedule),
                            SizedBox(width: 5),
                            Text("08:00", style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xff47525E), fontSize: 14, fontWeight: FontWeight.bold)))
                          ],
                        )
                    ),
                    RoundedBox(label: "GRADUAÇÃO",
                        child: Row(
                          children: [
                            Container(height: 22, width: 22, decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black
                            ),
                            ),
                            SizedBox(width: 5),
                            Text("PRETA", style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xff47525E), fontSize: 14, fontWeight: FontWeight.bold))),
                          ],
                        ))

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
