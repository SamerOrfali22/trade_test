# weather_app

A simple Weather App using Clean architecture

steps to run the app:

- fork the repository 'git clone https://github.com/SamerOrfali22/trade_test'
- run flutter pub get
- flutter run

Technologies Used

* API : tradeling api
* State Management : GetX
* http Services : dio
* Dependency Injection : GetIt
* Models : freezed
* Localization: flutter localization tool with intl_utils to enable to generate translations with
  variables support.
* Navigation: Auto Route
* Responsive: Flutter Screenutil
* Local storage : Using the Stock library, it is easier to implement the SOT principle, even if
  offline support is not needed. This approach can improve the user experience and make it easier to
  migrate to offline support in the future.

Clean Architecture Structure Base structure shipped with strict custom lint, base classes , utils
and devops tools will bring consistency and best performance guarantee. Taking in consideration
project size the structure has guidance will make it fit from small size to enterprise Flutter
applications, enable it to scale, improve quality, robustness, and make it easier to test.

this structure designed according to the Clean Architecture and google best practices and guidance.
Benefits of using base Architecture :

It allows the app to scale. More people and more teams can contribute to the same codebase with
minimal code conflicts. More stable application. More features due to a more productive engineering
team. improves the maintainability, quality and robustness of the overall app. It is easier to test.
A good Architecture encourages simpler types which are generally easier to test.