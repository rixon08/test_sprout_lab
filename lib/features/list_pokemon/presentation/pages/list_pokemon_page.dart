import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_sprout_lab/core/injection/injection.dart';
import 'package:test_sprout_lab/features/detail_pokemon/presentation/pages/detail_pokemon_page.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_data_list_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_detail_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/list_pokemon/presentation/bloc/list_pokemon_bloc.dart';

class ListPokemonPage extends StatelessWidget {
  ListPokemonPage({super.key});

  final ListPokemonBloc _bloc = ListPokemonBloc(
      sl<GetDataListPokemonUseCase>(), sl<GetDetailPokemonUseCase>())
    ..add(RefreshListPokemonEvent());

  List<PokemonModel> _listPokemon = [];

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                height: 230,
                width: 230,
                child: Stack(
                  children: [
                    Positioned(
                      left: 90,
                      bottom: 50,
                      child: Opacity(
                        opacity: 0.2,
                        child: SvgPicture.asset(
                          width: 230,
                          height: 230,
                          "assets/images/pokeball.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.grey, BlendMode.srcIn),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.format_list_bulleted,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Pokedex",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Expanded(
                        child: BlocConsumer(
                            bloc: _bloc,
                            listener: (context, state) {
                              if (state is ListPokemonFinishGetDataState) {
                                _listPokemon = state.listPokemon;
                                isLoading = false;
                              }
                            },
                            builder: (context, state) {
                              return isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : GridView.builder(
                                      padding: const EdgeInsets.all(10),
                                      itemCount: _listPokemon.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10,
                                              childAspectRatio: 1.5),
                                      itemBuilder: (context, index) {
                                        return Material(
                                          color:
                                              _listPokemon[index].colorPokemon,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                          child: InkWell(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DetailPokemonPage(
                                                              pokemon:
                                                                  _listPokemon[
                                                                      index])));
                                            },
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15))),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          _listPokemon[index]
                                                              .name
                                                              .toUpperCase(),
                                                          style: const TextStyle(
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        for (int i = 0;
                                                            i <
                                                                (_listPokemon[index]
                                                                            .types
                                                                            .length >
                                                                        2
                                                                    ? 2
                                                                    : _listPokemon[
                                                                            index]
                                                                        .types
                                                                        .length);
                                                            i++)
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5),
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10,
                                                                    vertical:
                                                                        5),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white
                                                                    .withValues(
                                                                        alpha:
                                                                            0.3),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .all(
                                                                        Radius.circular(
                                                                            30))),
                                                            child: Text(
                                                              _listPokemon[
                                                                      index]
                                                                  .types[i]
                                                                  .type
                                                                  .name,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          )
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: SizedBox(
                                                      width: 100,
                                                      height: 100,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Positioned(
                                                              top: 10,
                                                              left: 10,
                                                              child: Opacity(
                                                                opacity: 0.4,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  width: 100,
                                                                  height: 100,
                                                                  "assets/images/pokeball.svg",
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              )),
                                                          Hero(
                                                            tag: _listPokemon[index].id.toString(),
                                                            child: SvgPicture.network(
                                                                width: 70,
                                                                height: 70,
                                                                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${_listPokemon[index].id}.svg"),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });

                              // ListView.builder(
                              //   itemCount: _listPokemon.length,
                              //   itemBuilder: (context, index) {
                              //     return Container(
                              //       padding: EdgeInsets.all(10),
                              //       color: _listPokemon[index].colorPokemon,
                              //       child: Column(
                              //         mainAxisSize: MainAxisSize.min,
                              //         children: [
                              //           //Text(_listPokemon[index].sprites.frontDefault),
                              //           SvgPicture.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${_listPokemon[index].id}.svg"),
                              //           // Image.network(
                              //           //   width: 200,
                              //           //   height: 200,
                              //           //   _listPokemon[index].sprites.frontDefault ?? ""),
                              //           Text(_listPokemon[index].name),
                              //         ],
                              //       ));
                              // },);
                            }))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
