import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spase_explorer/core/models/models.dart';
import 'package:spase_explorer/core/repositories/news_repository.dart';
import 'package:spase_logger/spase_logger.dart';

part 'news_state.dart';

class NewsListCubit extends Cubit<NewsListState> {
  NewsListCubit(this.repository) : super(const NewsListState());

  final NewsRepository repository;

  Future<void> fetchNewsList() async {
    try {
      emit(state.copy(status: NewsListStatus.loading));

      final newsList = await repository.getArticles();

      emit(
        state.copy(
          status: NewsListStatus.success,
          newsList: newsList,
        ),
      );
    } on Exception catch (e, stackTrace) {
      spaseLogger.e('Failure loading news list', e, stackTrace);
      emit(state.copy(status: NewsListStatus.failure));
    }
  }
}
