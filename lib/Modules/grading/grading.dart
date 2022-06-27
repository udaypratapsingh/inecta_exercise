import 'package:flutter/material.dart';
import 'package:inecta_exercise/Modules/offload/offload_bloc.dart';
import 'package:inecta_exercise/Modules/offload/offload_model.dart';
import 'package:inecta_exercise/constants/app_constant.dart';
import 'package:inecta_exercise/utils/app_theme.dart';
import 'package:inecta_exercise/widgets/navigation_drawer.dart';

class Grading extends StatefulWidget {
  const Grading({Key? key}) : super(key: key);

  @override
  State<Grading> createState() => _GradingState();
}

class _GradingState extends State<Grading> {
  final GlobalKey<ScaffoldState> _gradingKey = GlobalKey<ScaffoldState>();
  final TextEditingController _controller =  TextEditingController();


  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as OffloadBloc ;

    return Scaffold(
      key: _gradingKey,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _gradingKey.currentState?.openDrawer();
          },
          icon: const ImageIcon(
            AssetImage("assets/images/menu.png"),
          ),
        ),
        title: const Text(
          'Grading',
          style: AppTheme.smallTitle,
        ),
        backgroundColor: const Color(0xff124D3D),
      ),
      drawer: NavigationDrawer(
        email: 'ups.chauhan84@gmail.com',
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: padding_15),
              child: Text(arguments.state.selectedData!.title,
                  textAlign: TextAlign.center,
                  style: AppTheme.smallTitle.copyWith(
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 80,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weight',
                    textAlign: TextAlign.left,
                    style: AppTheme.smallTitle.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Expanded(
                    child: TextField(
                      keyboardType:
          const TextInputType.numberWithOptions(decimal: true, signed: false),
                      controller: _controller,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff124D3D), width: 1.0),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Enter weight',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: padding_15),
                    child: ElevatedButton(
                        onPressed: () async {
                          await  arguments.updatePrice(arguments.state.selectedData!, double.parse(_controller.text));
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff124D3D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                        ),
                        child: const Text('Add to total')),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
