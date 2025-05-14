import 'package:get_it/get_it.dart';
import 'package:moodcast/Core/Services/firebase_auth_services.dart';
import 'package:moodcast/Features/Auth/Data/repo/auth_repo_impl.dart';
import 'package:moodcast/Features/Auth/Domain/repo/auth_repo.dart';

void setup() {
  GetIt.I.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  GetIt.I.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthServices: GetIt.I<FirebaseAuthServices>()),
  );
}
