import 'recipe.dart';
import 'user_recipe.dart';

/// A class that helps with recipe-related data.
///
/// Defines an interface or contract for concrete recipe repositories.
///
/// Today there's a Firebase-based recipe repository,
/// tomorrow there could be an API-based recipe repository,
/// or even a local storage based recipe repository (for caching),
/// and so on.
abstract class RecipeRepository {
  /// Returns a list of [Recipe]s that contain specified ingredients
  /// in their own list of ingredients.
  Future<List<Recipe>> findRecipesByIngredients(List<String> ingredients);

  /// Returns a [Recipe] identified by given unique id.
  Future<Recipe> getRecipe(String id);

  /// Returns a [Recipe] found at `url`.
  Future<Recipe> getRecipeBySourceUrl(String url);

  /// Saves given recipe to database or other persistent store.
  ///
  /// This is useful when temporarily or permanently caching
  /// a recipe from a third-party source.
  ///
  /// It will usually be triggered along with `RecipeRepository.viewRecipe()`.
  ///
  /// Returns the saved recipe's id if successful, null otherwise.
  Future<Recipe> saveRecipe(Recipe recipe);

  /// Mark given recipe as a favorite of current user,
  /// unmark if already a favorite.
  ///
  /// This updates the corresponding [UserRecipe]'s `isFavorite` and `favoritedAt` fields.
  ///
  /// Returns the updated [UserRecipe].
  Future<UserRecipe> toggleFavorite(String recipeId);

  /// Mark given recipe as viewed by current user.
  ///
  /// If a corresponding [UserRecipe] does not exist, one will be created.
  /// Otherwise the corresponding [UserRecipe]'s `viewedAt` field will be updated.
  ///
  /// Consequentially, presence of a corresponding [UserRecipe] indicates
  /// that given recipe has been viewed by current user.
  ///
  /// Returns the created or updated [UserRecipe].
  Future<UserRecipe> viewRecipe(String recipeId);

  /// Mark given recipe as played by current user.
  ///
  /// This updates the corresponding [UserRecipe]'s `isPlayed` and `playedAt` fields.
  ///
  /// Returns the updated [UserRecipe].
  Future<UserRecipe> playRecipe(String recipeId);

  /// Returns favorite recipes of given user.
  Future<List<UserRecipe>> getFavoriteRecipes(String userId);

  /// Returns recipes played by given user.
  Future<List<UserRecipe>> getPlayedRecipes(String userId);

  /// Returns recipes viewed by current user.
  ///
  /// Note that method does not accept a `userId` and works only for the current user,
  /// because we want to keep a user's views private.
  /// This is in contrast to favorite and played recipes,
  /// data that we want to publicly display on a user's profile screen.
  Future<List<UserRecipe>> getViewedRecipes();

  /// Returns users associated with given recipe.
  Future<List<UserRecipe>> getUsersForRecipe(String recipeId);
}