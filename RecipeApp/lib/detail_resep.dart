import 'package:flutter/material.dart';
import 'resep.dart';

class DetailResep extends StatefulWidget {
  final Resep resep;

  const DetailResep ({Key? key, required this.resep}) : super(key: key);

  @override
  _DetailResepState createState() {
    return _DetailResepState();
  }
}

class _DetailResepState extends State<DetailResep> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.resep.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.resep.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.resep.label,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.resep.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final Ingredient = widget.resep.ingredients[index];
                  return Text(
                    '${Ingredient.quantity * _sliderVal} ${Ingredient.measure}'
                      '${Ingredient.name}');
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.resep.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Color.fromARGB(255, 255, 107, 169),
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
