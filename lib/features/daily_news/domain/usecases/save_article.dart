import 'package:news_app/core/usecases/usecase.dart';
import 'package:news_app/features/daily_news/domain/entities/articles.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repository.dart';

class SaveArticleUseCase
    implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity ? param}) {
    return _articleRepository.insertArticle(param!);
  }
}
