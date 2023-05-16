import 'package:flutter/material.dart';

/// These class holds all the application Themes
/// @author: Adeyemi Adeseye
/// @date: 30/12/2022
/// @modified: Ugochukwu Umeh
/// @when: 16/01/2023

class MyThemes {
  static final darkTheme = ThemeData(
    //scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Color(0xff0F82D6),
      secondary: Color(0xff0F82D6),
      onSecondary: Colors.white,
      error: Color(0xffcf6679),
      onError: Colors.black,
      background: Color(0xff121212),
      onBackground: Colors.white,
      surface: Color(0xff121212),
      onSurface: Colors.white,
      tertiary: Color(0xFF909090),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff0F82D6),
      selectionColor: Color(0xff0F82D6),
      selectionHandleColor: Color(0xff0F82D6),
    ),
    fontFamily: Fonts.inter,
  );

  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      //predefined colour scheme for light with my modification
      primary: Colors.white,
      onPrimary: Color(0xff0F82D6),
      secondary: Color(0xff0F82D6),
      onSecondary: Colors.white,
      error: Color(0xffb00020),
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
      tertiary: Color(0xFF909090),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff0F82D6),
      selectionColor: Color(0xff0F82D6),
      selectionHandleColor: Color(0xff0F82D6),
    ),
    fontFamily: Fonts.inter,
  );
}
///Defines the different fonts
class Fonts {
  static const String inter = 'Inter';
  static const String passionOne = 'PassionOne';
  static const String rajdhani = 'Rajdhani';
  static const String roboto = 'Roboto';
  static const String bevan = 'Bevan';
  static const String lalezar = 'Lalezar';
  static const String blackHanSans = 'BlackHanSans';
  static const String poppins = 'Poppins';
  static const String oswald = 'Oswald';
  static const String oleoScript = 'OleoScript';
  static const String teko = 'Teko';
  static const String ptSansNarrow = 'PTSansNarrow';
  static const String akshar = 'Akshar';
  static const String squadaOne = 'SquadaOne';
  static const String blackOpsOne = 'BlackOpsOne';
  static const String play = 'Play';
  static const String sairaStencilOne = 'SairaStencilOne';
  static const String cabin = 'Cabin';
  static const String bangers = 'Bangers';
  static const String calistoga = 'Calistoga';
  static const String lato = 'Lato';
  static const String suezOne = 'SuezOne';
  static const String chivo = 'Chivo';
  static const String bigshotOne = 'BigshotOne';
  static const String montserrat = 'Montserrat';
  static const String sourceSansPro = 'SourceSansPro';
  static const String archivo = 'Archivo';
  static const String iBMPlexSans = 'IBMPlexSans';
  static const String raleway = 'Raleway';
  static const String rubik = 'Rubik';
  static const String anton = 'Anton';
  static const String manrope = 'Manrope';
  static const String markaziText = 'MarkaziText';
  static const String iBMPlexSansCondensed = 'IBMPlexSansCondensed';
  static const String lexend = 'Lexend';
  static const String anekKannada = 'AnekKannada';
  static const String yanoneKaffeesatz = 'YanoneKaffeesatz';
  static const String abrilFatface = 'AbrilFatface';
  static const String secularOne = 'SecularOne';
  static const String ubuntu = 'Ubuntu';
  static const String jost = 'Jost';
  static const String karla = 'Karla';
  static const String gemunuLibre = 'GemunuLibre';
  static const String tradeWinds = 'TradeWinds';
  static const String doppioOne = 'DoppioOne';
  static const String bigShouldersText = 'BigShouldersText';
  static const String radioCanada = 'RadoCanada';
  static const String francoisOne = 'FrancoisOne';
  static const String manuale = 'Manuale';
  static const String alumniSans = 'AlumniSans';
  static const String katibeh = 'Katibeh';
  static const String germaniaOne = 'GermaniaOne';
  static const String notoSans = 'NotoSans';
  static const String lobster = 'Lobster';
  static const String bayon = 'Bayon';
  static const String glory = 'Glory';
  static const String tapestry = 'Tapestry';
  static const String heebo = 'Heebo';
  static const String unbounded = 'Unbounded';
  static const String titilliumWeb = 'TitilliumWeb';
  static const String barlow = 'Barlow';
  static const String dosis = 'Dosis';
  static const String assistant = 'Assistant';
  static const String hind = 'Hind';
  static const String fasterOne = 'FasterOne';
  static const String neuton = 'Neuton';
  static const String sairaCondensed = 'SairaCondensed';
  static const String titanOne = 'TitanOne';
  static const String tomorrow = 'Tomorrow';
  static const String kanit = 'Kanit';
  static const String archivoBlack = 'ArchivoBlack';
  static const String sofiaSans = 'SofiaSans';
  static const String Dosis = 'Dosis';
  static const String rowdies = 'Rowdies';
  static const String coda = 'Coda';
  static const String quantico = 'Quantico';
  static const String bowlbyOne = 'BowlbyOne';
  static const String bowlbyOneSc = 'BowlbyOneSc';
  static const String lilitaOne = 'LilitaOne';
  static const String shrikhand = 'Shrikhand';
  static const String permanentMarker = 'PermanentMarker';
  static const String rye = 'Rye';
  static const String racingSansOne = 'RacingSansOne';
  static const String coiny = 'Coiny';
  static const String bubbleGumSans = 'BubbleGumSans';




}