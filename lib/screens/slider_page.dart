import 'dart:math';

import 'package:flutter/material.dart';
import 'details_page.dart';
import 'superhero_card.dart';
import '../models/superhero.dart';

class SuperheroSliderPage extends StatefulWidget {
  const SuperheroSliderPage({
    Key? key,
  }) : super(key: key);

  @override
  _SuperheroSliderPageState createState() => _SuperheroSliderPageState();
}

class _SuperheroSliderPageState extends State<SuperheroSliderPage> {
  PageController? _pageController;
  late int _index;
  late int _auxIndex;
  double? _percent;
  double? _auxPercent;
  late bool _isScrolling;

  @override
  void initState() {
    _pageController = PageController();
    _index = 0;
    _auxIndex = _index + 1;
    _percent = 0.0;
    _auxPercent = 1.0 - _percent!;
    _isScrolling = false;
    _pageController!.addListener(_pageListener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!
      ..removeListener(_pageListener)
      ..dispose();
    super.dispose();
  }

  //--------------------------
  // Page View Listener
  //--------------------------
  void _pageListener() {
    _index = _pageController!.page!.floor();
    _auxIndex = _index + 1;
    _percent = (_pageController!.page! - _index).abs();
    _auxPercent = 1.0 - _percent!;

    _isScrolling = _pageController!.page! % 1.0 != 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const heroes = Superhero.marvelHeroes;
    const  angleRotate = -pi * .5;
    return Scaffold(
      //---------------
      // App Bar
      //---------------
      appBar: AppBar(
        title:const  Text("movies"),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        children: [
          //-----------------------
          // Superhero Cards
          //-----------------------
          AnimatedPositioned( //trigger a relayout of the animation.
            duration: kThemeAnimationDuration,
            top: 0,
            bottom: 0,
            right: _isScrolling ? 10 : 0,
            left: _isScrolling ? 10 : 0,
            child: Stack(
              children: [
                //----------------
                // Back Card
                //----------------
                Transform.translate(
                  //Creates a widget that transforms its child using a translation.
                  offset: Offset(0, 50 * _auxPercent!),
                  child: SuperheroCard(
                    superhero: heroes[_auxIndex.clamp(0, heroes.length - 1)],
                    factorChange: _auxPercent,
                  ),
                ),
                //----------------
                // Front Card
                //----------------
                Transform.translate(
                  offset: Offset(-800 * _percent!, 100 * _percent!),
                  child: Transform.rotate(
                    angle: angleRotate * _percent!,
                    child: SuperheroCard(
                      superhero: heroes[_index],
                      factorChange: _percent,
                    ),
                  ),
                )
              ],
            ),
          ),
          //-----------------------------------------------------
          // VOID PAGE VIEW
          // This page view is just for using the page controller
          //-----------------------------------------------------
          PageView.builder(
            controller: _pageController,
            itemCount: heroes.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => _openDetail(context, heroes[index]),
                child: const SizedBox(),
              );
            },
          )
        ],
      ),
    );
  }

  void _openDetail(BuildContext context, Superhero superhero) {
    Navigator.push(context, PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return FadeTransition(
          opacity: animation,
          child: SuperheroDetailPage(
            superhero: superhero,
          ),
        );
      },
    ));
  }
}