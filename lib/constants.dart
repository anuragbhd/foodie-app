import 'package:flutter/material.dart';
import 'package:foodieapp/util/template_string.dart';

// Container attributes
const kContShadowColor = Colors.black38;
const kContElevation = 5.0;
const kContBorderRadiusSm = BorderRadius.all(Radius.circular(10.0));
const kContBorderRadiusLg = BorderRadius.all(Radius.circular(20.0));

// Modal attributes
const kModalBorderRadiusUnits = 30.0;

// Colors
const kColorGreen = Color(0xff28d488);
const kColorBlue = Colors.blue;
const kColorBluegrey = Color(0xff353d52);
const kColorLightGrey = Color(0xffe4e4e4);

// White spaces
const kPaddingUnits = 20.0;
const kPaddingUnitsSm = 10.0;
const kPaddingHorizontal = EdgeInsets.symmetric(horizontal: kPaddingUnits);
const kPaddingHorizontalSm = EdgeInsets.symmetric(horizontal: kPaddingUnitsSm);
const kPaddingAll = EdgeInsets.all(kPaddingUnits);
const kPaddingAllSm = EdgeInsets.all(kPaddingUnitsSm);

// Firestore collections
const kFirestoreIngredients = 'ingredients';
const kFirestoreUserIngredients = 'user_ingredients';
const kFirestoreRecipes = 'recipes';
const kFirestoreUserRecipes = 'user_recipes';

// Miscellaneous
const kDefaultUsername = 'Rockstar';

// API urls
final kUrlFindRecipesApi = TemplateString(
  'http://www.recipepuppy.com/api/?i={ingredients}',
);
final kUrlGetRecipeApi = TemplateString(
  'https://api.spoonacular.com/recipes/{id}/information?apiKey=$kSpoonacularApiKey',
);
final kUrlExtractRecipeApi = TemplateString(
  'https://api.spoonacular.com/recipes/extract/{url}?apiKey=$kSpoonacularApiKey',
);

// Regular expressions
final kRegexUrl = RegExp(
    '^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\$');

// Secrets
const kSpoonacularApiKey = '72f3276161d847358a527b7b0d303941';
