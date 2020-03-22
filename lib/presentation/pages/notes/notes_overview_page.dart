import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:previsao_app/application/auth/auth_bloc.dart';
import 'package:previsao_app/presentation/routes/router.gr.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) => Router.navigator.pushReplacementNamed(Routes.signInPage),
              orElse: () {}
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notes'),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            }
          ),
          actions: <Widget>[
            
          ],
        ),
        body: Container(
          child: Text('Corpo....'),
        ),
      ),
    );
  }
}