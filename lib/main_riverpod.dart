import 'package:spase_explorer/app/app.dart';
import 'package:spase_explorer/bootstrap.dart';
import 'package:spase_logger/spase_logger.dart';

void main() {
  SpaseLogger.newInstance(SpaseFlavor.riverpod);
  bootstrap(() => const App());
}
