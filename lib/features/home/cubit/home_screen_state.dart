part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitialState extends HomeScreenState {}

class ErrorState extends HomeScreenState {}

class LoadingState extends HomeScreenState {}

class LoadedHomeDataSuccessfullyState extends HomeScreenState {
  final List<ArticleModel> articles;

  LoadedHomeDataSuccessfullyState({required this.articles});
}
