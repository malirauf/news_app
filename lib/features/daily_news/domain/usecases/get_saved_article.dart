import 'package:news_app/core/usecases/usecase.dart';
import 'package:news_app/features/daily_news/domain/entities/articles.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repository.dart';

class GetSavedArticleUseCase
    implements UseCase<List<ArticleEntity>, void> {
  final ArticleRepository _articleRepository;

  GetSavedArticleUseCase(this._articleRepository);

  @override
  Future<List<ArticleEntity>> call({void param}) {
    return _articleRepository.getSavedArticles();
  }
}
