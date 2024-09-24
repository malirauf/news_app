import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/entities/articles.dart';

abstract class ArticleRepository{

  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // Database
  Future<List<ArticleEntity>> getSavedArticles();  
  
  Future<void> removeArticle(ArticleEntity article);

  Future<void> insertArticle(ArticleEntity article);  
  
}