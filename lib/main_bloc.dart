import 'package:api_client/api_client.dart';
import 'package:spase_explorer/app/app.dart';
import 'package:spase_explorer/bootstrap.dart';
import 'package:spase_explorer/core/repositories/news_repository.dart';
import 'package:spase_logger/spase_logger.dart';

void main() {
  SpaseLogger.newInstance(SpaseFlavor.bloc);
  bootstrap(
    () async {
      final newsDio = const DioFactory(newsBaseUrl).create();
      final newsApiClient = NewsApiClient(newsDio);
      final eventsDio = const DioFactory(eventsBaseUrl).create();
      final eventsApiClient = EventsApiClient(eventsDio);

      final newsRepository = NewsRepository(apiClient: newsApiClient);

      return App(newsRepository: newsRepository);
    },
  );
}
