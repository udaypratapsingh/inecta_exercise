import 'package:flutter/material.dart';
import 'package:inecta_exercise/Modules/offload/offload_bloc.dart';
import 'package:inecta_exercise/bloc/bloc_builder.dart';
import 'package:inecta_exercise/constants/app_constant.dart';
import 'package:inecta_exercise/utils/app_routes.dart';
import 'package:inecta_exercise/utils/app_theme.dart';
import 'package:inecta_exercise/widgets/navigation_drawer.dart';

class Offload extends StatefulWidget {
  const Offload({Key? key}) : super(key: key);

  @override
  State<Offload> createState() => _OffloadState();
}

class _OffloadState extends State<Offload> {
  final GlobalKey<ScaffoldState> _offloadKey = GlobalKey<ScaffoldState>();
  OffloadBloc bloc = OffloadBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _offloadKey,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _offloadKey.currentState?.openDrawer();
          },
          icon: const ImageIcon(
            AssetImage("assets/images/menu.png"),
          ),
        ),
        title: const Text(
          'Offload',
          style: AppTheme.smallTitle,
        ),
        backgroundColor: const Color(0xff124D3D),
      ),
      drawer: NavigationDrawer(
        email: 'ups.chauhan84@gmail.com',
      ),
      body: BlocBuilder(
          bloc: bloc,
          builder: () {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: padding_15),
                    child: Text('Pick your fish',
                        textAlign: TextAlign.center,
                        style: AppTheme.smallTitle.copyWith(
                          color: Colors.black,
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: padding_10, top: padding_10),
                      child: Text('Total Qty',
                          textAlign: TextAlign.right,
                          style: AppTheme.smallTitle.copyWith(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: bloc.state.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            bloc.updateSelectedData(index);
                            Navigator.pushNamed(context, AppRoutes.grading, arguments:bloc);
                          },
                          child: Row(
                            children: [
                              Container(
                                color: Colors.grey,
                                width: 100,
                                height: 100,
                                margin: const EdgeInsets.all(20),
                              ),
                              Text(bloc.state.data[index].title,
                                  textAlign: TextAlign.right,
                                  style: AppTheme.smallTitle.copyWith(
                                    color: Colors.black,
                                  )),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: padding_10),
                                  child: Text(
                                      "${bloc.state.data[index].totalPrice} LBS",
                                      textAlign: TextAlign.right,
                                      style: AppTheme.smallTitle.copyWith(
                                        color: Colors.black,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
