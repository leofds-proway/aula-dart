
import 'package:intl/intl.dart';

class Utils {
  static DateFormat df = DateFormat('dd/MM/yyyy HH:mm:ss');

  static String converteData(DateTime dt){
    return df.format(dt);
  }
}

void main(List<String> args) {
  final agora = DateTime.now();

  String agoraEmString = Utils.converteData( agora );
  
  print( agoraEmString );
}