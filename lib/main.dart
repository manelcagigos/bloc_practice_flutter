import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/color/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: MaterialApp(
        home: SafeArea(
          child: BlocBuilder<ColorBloc, ColorState>(
            builder: (context, state) {
              print(state);
              if (state is ChangeColorState) {
                return Container(
                  color: state.color,
                  child: FloatingActionButton(onPressed: () {
                    //context.read<ColorBloc>().add(ChangeColorEvent());
                    BlocProvider.of<ColorBloc>(context).add(ChangeColorEvent());
                  }),
                );
              } else {
                return Container(
                  color: Colors.white,
                  child: FloatingActionButton(onPressed: () {
                    //context.read<ColorBloc>().add(ChangeColorEvent());
                    BlocProvider.of<ColorBloc>(context).add(ChangeColorEvent());
                  }),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

// child: BlocBuilder<ColorBloc, ColorState>(
//             builder: (context, state) {
//               if (state is ColorInitial) {
//                 return Container(
//                   decoration: BoxDecoration(color: state.color),
//                   child: FloatingActionButton(
//                     onPressed: () {
//                       BlocProvider.of<ColorBloc>(context)
//                           .add(const ColorChangeEvent(color: Colors.white));
//                     },
//                   ),
//                 );
//               } else if (state is ColorChangeState) {
//                 return Container(
//                   decoration: BoxDecoration(color: state.color),
//                   child: FloatingActionButton(
//                     onPressed: () {
//                       BlocProvider.of<ColorBloc>(context)
//                           .add(const ColorChangeEvent(color: Colors.red));
//                     },
//                   ),
//                 );
//               } else {
//                 return Container();
//               }
//             },
//           ),