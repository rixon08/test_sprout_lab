import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_sprout_lab/core/injection/injection.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/models/item_tab_model.dart';
import 'package:test_sprout_lab/features/detail_pokemon/domain/usecases/get_detail_species_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/detail_pokemon/presentation/bloc/detail_pokemon_bloc.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_data_list_pokemon_usecase.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/usecases/get_detail_pokemon_usecase.dart';

class DetailPokemonPage extends StatelessWidget {
  final PokemonModel pokemon;
  late DetailPokemonBloc _bloc;
  List<ItemTabModel> listItemTab = [
    ItemTabModel("About", isActive: true),
    ItemTabModel("Base Stats"),
    ItemTabModel("Evolution"),
    ItemTabModel("Moves"),
  ];

  DetailPokemonPage({super.key, required this.pokemon}){
    _bloc = DetailPokemonBloc(pokemon, sl<GetDetailSpeciesPokemonUseCase>())..add(GetDataDetailPokemonEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: SafeArea(
            top: false,
            child: Container(
              decoration: BoxDecoration(color: pokemon.colorPokemon),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(color: pokemon.colorPokemon),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 0,
                      left: 0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 50,
                            margin: EdgeInsets.only(top: 40),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pokemon.name.toUpperCase(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Wrap(
                                      runSpacing: 10,
                                      spacing: 10,
                                      children: [
                                        for (int i = 0;
                                            i < pokemon.types.length;
                                            i++)
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withValues(alpha: 0.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(30))),
                                            child: Text(
                                              pokemon.types[i].type.name,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                      ],
                                    )
                                  ],
                                )),
                                Text(
                                  "#${pokemon.id.toString()}",
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 120),
                        height: 170,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              child: Stack(
                                children: [
                                  Positioned(
                                      left: 20,
                                      child: Opacity(
                                        opacity: 0.2,
                                        child: SvgPicture.asset(
                                            width: 170,
                                            height: 170,
                                            "assets/images/pokeball.svg"),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height / 2,
                        padding: EdgeInsets.only(top: 35),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                for (final itemTab in listItemTab)
                                  Expanded(
                                      child: _tabItemWidget(itemTab.name,
                                          isActive: itemTab.isActive))
                              ],
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 140),
                        child: Hero(
                          tag: pokemon.id.toString(),
                          child: SvgPicture.network(
                              width: MediaQuery.sizeOf(context).width * 3 / 6,
                              height: MediaQuery.sizeOf(context).width * 3 / 6,
                              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${pokemon.id}.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget _tabItemWidget(String name, {bool isActive = false}) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 40,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                  child: Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isActive ? Colors.black : Colors.grey),
              )),
              Container(
                height: 1,
                color: isActive
                    ? const Color.fromARGB(255, 18, 86, 141)
                    : Colors.grey.withValues(alpha: 0.1),
              ),
              Container(
                height: 1,
                color: Colors.grey.withValues(alpha: 0.1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
