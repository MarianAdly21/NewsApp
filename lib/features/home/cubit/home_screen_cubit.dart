import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news__app/models/article_model.dart';
import 'package:news__app/service/news_service.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitialState());

  void getHomeDate() async {
    emit(LoadingState());
    try {
      List<ArticleModel> articalModel =
          await NewsService(Dio()).getNews(category: "general");
      emit(LoadedHomeDataSuccessfullyState(articles: articalModel));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
