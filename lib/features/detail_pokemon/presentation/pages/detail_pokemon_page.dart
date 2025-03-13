import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_sprout_lab/features/detail_pokemon/presentation/bloc/detail_pokemon_bloc.dart';
import 'package:test_sprout_lab/features/list_pokemon/domain/models/pokemon_model.dart';

class DetailPokemonPage extends StatelessWidget {
  final PokemonModel pokemon;
  final DetailPokemonBloc _bloc = DetailPokemonBloc();

  DetailPokemonPage({super.key, required this.pokemon});

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
                            height: 100,
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
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height / 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: const Center(
                            child: Text("Bottom Widget",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 150),
                        child: SvgPicture.network(
                            width: MediaQuery.sizeOf(context).width * 3 / 5,
                            height: MediaQuery.sizeOf(context).width * 3 / 5,
                            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${pokemon.id}.svg"),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
