import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spase_explorer/core/design_system/design_system.dart';
import 'package:spase_explorer/feature/news/list/cubit/news_cubit.dart';
import 'package:spase_explorer/feature/news/list/ui/mobile_news_screen.dart';
import 'package:spase_explorer/feature/news/list/ui/web_news_screen.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLarge = MediaQuery.of(context).size.width > 600;
    return BlocBuilder<NewsListCubit, NewsListState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
              child: SpaseLoadingIndicator(),
            ),
          );
        }
        return isLarge
            ? WebNewsScreen(articles: state.newsList)
            : MobileNewsScreen(articles: state.newsList);
      },
    );
  }
}
