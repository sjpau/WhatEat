import 'package:flutter/material.dart';
import 'package:what_eat_flutter/pages/results.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'package:what_eat_flutter/repositories/edamam_api/recipe_lookup.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  String? _searchTerm;
  String? _caloriesFrom;
  String? _caloriesTo;
  String? _selectedMealType;
  final List<String> _selectedDietLabels = [];
  bool _isButtonEnabled = false;

  final List<String> _dietLabels = [
    'alcohol-cocktail', 'alcohol-free', 'celery-free', 'crustacean-free', 'dairy-free',
    'egg-free', 'fish-free', 'fodmap-free', 'gluten-free', 'immuno-supportive', 'keto-friendly',
    'kidney-friendly', 'kosher', 'low-potassium', 'low-sugar', 'lupine-free', 'mollusk-free',
    'mustard-free', 'paleo', 'peanut-free', 'pecatarian', 'pork-free', 'red-meat-free',
    'sesame-free', 'shellfish-free', 'soy-free', 'sugar-conscious', 'sulfite-free',
    'tree-nut-free', 'vegan', 'vegetarian', 'wheat-free'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                      ),
                      onChanged: (value) {
                        _searchTerm = value;
                        _updateButtonState();
                      },
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "Calories",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'From',
                              hintText: 'Enter min calories',
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              _caloriesFrom = value;
                              _updateButtonState();
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'To',
                              hintText: 'Enter max calories',
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              _caloriesTo = value;
                              _updateButtonState();
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Meal type dropdown
                    const Text(
                      "Meal Type",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      value: _selectedMealType,
                      hint: const Text("Select a meal type"),
                      items: const [
                        DropdownMenuItem(value: 'Breakfast', child: Text('Breakfast')),
                        DropdownMenuItem(value: 'Lunch', child: Text('Lunch')),
                        DropdownMenuItem(value: 'Dinner', child: Text('Dinner')),
                        DropdownMenuItem(value: 'Snack', child: Text('Snack')),
                        DropdownMenuItem(value: 'Teatime', child: Text('Teatime')),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedMealType = newValue;
                          _updateButtonState();
                        });
                      },
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "Dietary Restrictions",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),

                    ElevatedButton(
                      onPressed: () {
                        _showMultiSelectDialog();
                      },
                      child: const Text("Select Dietary Restrictions"),
                    ),

                    Wrap(
                      spacing: 8.0,
                      children: _selectedDietLabels.map((label) {
                        return Chip(
                          label: Text(label),
                          onDeleted: () {
                            setState(() {
                              _selectedDietLabels.remove(label);
                              _updateButtonState();
                            });
                          },
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isButtonEnabled ? _onSearchPressed : null,
                child: const Text("Search"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _searchTerm != null && _searchTerm!.isNotEmpty ||
          _caloriesFrom != null && _caloriesFrom!.isNotEmpty ||
          _caloriesTo != null && _caloriesTo!.isNotEmpty ||
          _selectedMealType != null ||
          _selectedDietLabels.isNotEmpty;
    });
  }

  void _showMultiSelectDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text("Select Dietary Restrictions"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: _dietLabels.map((label) {
                    return CheckboxListTile(
                      value: _selectedDietLabels.contains(label),
                      title: Text(label),
                      onChanged: (bool? selected) {
                        setState(() {
                          if (selected == true) {
                            _selectedDietLabels.add(label);
                          } else {
                            _selectedDietLabels.remove(label);
                          }
                          _updateButtonState(); 
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
              actions: [
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _onSearchPressed() async {
    // Show loading dialog
  showDialog(
    context: context,
    barrierDismissible: false, // Prevents dialog from closing if tapped outside
    builder: (BuildContext context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );

  final searchData = {
    "searchTerm": _searchTerm,
    "calories": {
      "from": _caloriesFrom,
      "to": _caloriesTo,
    },
    "mealType": _selectedMealType,
    "dietaryRestrictions": _selectedDietLabels,
  };

  RecipeRepository recipeRepository = RecipeRepository();

  try {
    List<RecipePreview> recipes = await recipeRepository.fetchRecipes(searchData);

    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsPage(recipes: recipes),
      ),
    );
  } catch (error) {
    Navigator.pop(context);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text("Failed to load recipes: $error"),
          actions: [
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  }
}