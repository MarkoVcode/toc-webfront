library recipe_book;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

import 'package:tutorial/component/recipe_book.dart';
import 'package:tutorial/component/login.dart';
import 'package:tutorial/component/register.dart';
import 'package:tutorial/component/password_reminder.dart';
import 'package:tutorial/component/controller.dart';
import 'package:tutorial/component/rating.dart';
import 'package:tutorial/component/search_recipe.dart';
import 'package:tutorial/component/view_recipe.dart';
import 'package:tutorial/formatter/category_filter.dart';
import 'package:tutorial/routing/recipe_book_router.dart';
import 'package:tutorial/service/query.dart';
import 'package:tutorial/tooltip/tooltip.dart';

class MyAppModule extends Module {
  MyAppModule() {
    bind(PageController);
//    bind(RecipeBookComponent);
//    bind(RatingComponent);
//    bind(Tooltip);
//    bind(CategoryFilter);
//    bind(SearchRecipeComponent);
//    bind(ViewRecipeComponent);
    bind(ViewLoginComponent);
    bind(ViewRegisterComponent);
    bind(ViewPasswordReminderComponent);
//    bind(QueryService);
    bind(RouteInitializerFn, toValue: recipeBookRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}

void main() {
  Logger.root..level = Level.FINEST
             ..onRecord.listen((LogRecord r) { print(r.message); });

  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
