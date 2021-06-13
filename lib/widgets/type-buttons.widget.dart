import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/widgets/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "stopped" ? buttons(bloc) : SizedBox();
  }

  Widget buttons(AppBloc bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Button(
          label: "Soft",
          selected: bloc.selected == "soft",
          callBack: () {
            bloc.select("soft");
          },
        ),
        Button(
          label: "Medium",
          selected: bloc.selected == "medium",
          callBack: () {
            bloc.select("medium");
          },
        ),
        Button(
          label: "Hard",
          selected: bloc.selected == "hard",
          callBack: () {
            bloc.select("hard");
          },
        )
      ],
    );
  }
}
