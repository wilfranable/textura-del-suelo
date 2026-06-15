class SoilClassifier {
  static String classify(double arcilla,double limo,double arena){
    if (arcilla >= 40 && limo <= 40 && arena <= 45) return "Arcilloso";
    if (arcilla >= 35 && limo >= 40) return "Arcilloso Limoso";
    if (arcilla >= 35 && arena >= 45) return "Arcilloso Arenoso";
    if (arcilla >= 27 && arcilla < 40 && limo >= 15 && limo <= 53) return "Franco Arcilloso";
    if (arcilla >= 20 && arcilla < 35 && arena > 45) return "Franco Arcilloso Arenoso";
    if (arcilla >= 27 && limo > 40) return "Franco Arcilloso Limoso";
    if (limo >= 80 && arcilla < 12) return "Limoso";
    if (limo >= 50 && arcilla < 27) return "Franco Limoso";
    if (arena >= 43 && arena < 85 && arcilla < 20) return "Franco Arenoso";
    if (arena >= 70 && arcilla < 15) return "Arenoso Franco";
    if (arena >= 85) return "Arenoso";
    return "Franco";
  }
}