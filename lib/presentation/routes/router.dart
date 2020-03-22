import 'package:auto_route/auto_route_annotations.dart';
import 'package:previsao_app/presentation/pages/notes/notes_overview_page.dart';
import 'package:previsao_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:previsao_app/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  NotesOverviewPage notesOverviewPage;
}