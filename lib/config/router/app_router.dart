import 'package:go_router/go_router.dart';
import 'package:posts_flutter_bloc/presentation/screens/screens.dart';


final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
    path: "/",
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
   GoRoute(
    path: "/new-user",
    name: NewUserScreen.name,
    builder: (context, state) => const NewUserScreen(),
  )
]);
