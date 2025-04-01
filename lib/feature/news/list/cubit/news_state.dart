part of 'news_cubit.dart';

enum NewsListStatus {
  initial,
  loading,
  success,
  failure;

  bool get isLoading => this == NewsListStatus.loading;
}

class NewsListState extends Equatable {
  const NewsListState({
    this.status = NewsListStatus.initial,
    this.newsList = const [],
  });

  final NewsListStatus status;
  final List<Article> newsList;

  @override
  List<Object?> get props => [status, newsList];

  NewsListState copy({
    NewsListStatus? status,
    List<Article>? newsList,
  }) {
    return NewsListState(
      status: status ?? this.status,
      newsList: newsList ?? this.newsList,
    );
  }
}
