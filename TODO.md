# TODO

## Database

- [ ] Ingredients master list

## UI

- [ ] Ingredients screen
  - [ ] Add/remove (manual)
  - [ ] Add from receipt (OCR)
  - [ ] Time machine (see ingredients during a time range)
  - [ ] Get recipe suggestions
- [ ] Recipe suggestions screen (wire up repository with existing screen)
- [ ] Recipe details screen (wire up repository with existing screen)
  - [ ] Save
  - [ ] Favorite
  - [ ] Play
  - [ ] Share
- [ ] User Profile screen
  - [ ] profile settings
  - [ ] account settings
- [ ] Friend Profile screen
  - [ ] friend's user profile details
- [ ] Better login screen
- [ ] Sign up screen
- [ ] Status screen
- [ ] Splash screen
- [ ] Launcher icon
- [ ] Refactor styling into ThemeData (optional)

## Business Logic

- [ ] User repository
  - [ ] store users in Firestore
- [ ] Friend repository
- [ ] Recipe repository (recipes + user_recipes collections)
  - [ ] find recipes by ingredients
  - [ ] add recipe (automatically done by viewing a recipe the first time from search results)
  - [ ] get recipe by id/title
  - [ ] get popular recipes
- [ ] Status repository
  - [ ] "my next cook is \_\_\_" message
  - [ ] now playing recipe (à la Steam)
  - [ ] custom status message (à la WhatsApp)
- [ ] Log respository
  - [ ] recipe search
  - [ ] errors
- [ ] Push Notifications (use Firebase Functions)
  - [ ] status updates for friends
- [ ] Email Notifications (use Firebase Functions)
  - [ ] email verification
  - [ ] welcome email
  - [ ] password reset
  - [ ] all push notification scenarios
- [ ] Facebook login
- [ ] Google login
- [ ] iOS support (Firebase and smoke testing)

## Tests

- [ ] More screen/widget tests
- [ ] More integration tests

## CI/CD

- [ ] Build automation