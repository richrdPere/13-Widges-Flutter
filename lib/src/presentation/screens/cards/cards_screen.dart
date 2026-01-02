import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) =>
                _Cardtype1(elevation: card['elevation'], label: card['label']),
          ),

          ...cards.map(
            (card) =>
                _Cardtype2(elevation: card['elevation'], label: card['label']),
          ),

          ...cards.map(
            (card) =>
                _Cardtype3(elevation: card['elevation'], label: card['label']),
          ),

          ...cards.map(
            (card) =>
                _Cardtype4(elevation: card['elevation'], label: card['label']),
          ),

          SizedBox(height: 100),
        ],
      ),
    );
  }
}

class _Cardtype1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _Cardtype1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(alignment: Alignment.bottomLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}

class _Cardtype2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _Cardtype2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: colors.outline),
        // borderRadius: BorderRadius.circular(20),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      elevation: elevation,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Cardtype3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _Cardtype3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceContainerHighest,
      elevation: elevation,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Cardtype4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _Cardtype4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
      
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            // width: double.infinity,
            fit: BoxFit.cover,
          ),
      
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
