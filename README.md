# Android Studio Templates

A set of Android studio package/activities/classes templates.Those templates are based on a system called FreeMarker. You can learn how to structure and format templates here: [Android ADT Template Format Document](http://www.i-programmer.info/professional-programmer/resources-and-tools/6845-android-adt-template-format-document.html).

## What to do?

### Installation

 * Copy templates you want to include in Android Studio from the package-templates folder.
 * Go to your Android Studio app, then Contents/plugins/android/lib/templates/other (Full path: /Applications/Android Studio.app/Contents/plugins/android/lib/templates/other).
 * Paste the templates in the 'other' folder
 * Restart Android Studio if it's running.

Note: Make sure to check the repo for updated templates. You have to remove and add the updated template again.

Note 2: Android Studio will remove the template on each update. You need to install it after each update.

### Usage

 * Launch Android Studio
 * `Right click -> New` where you want to use the new template. Look for your new template and use it. 
 * Complete the form with your information.
 * Hit finish and enjoy!

## List of templates

1. Dagger
	* Dagger setup (PerApp/PerActivity/Injector/HasComponent/AppComponent/AppModule)
	* Component
	* Component/Module
2. MVVM
	* Activity package (Activity/ViewModel/View/Layout)
	* Fragment package (Fragment/ViewModel/View/Layout)
3. MVP
	* Activity package (Activity/View/Presenter/Component/Module/Layout)
	* Fragment package (Fragment/Presenter/View/Layout)

Make sure to check sample to have an idea of the result for each template.

## TODO

* Automatically install templates using a Script.

## Want to Contribute?

Submit your template ideas (issues or pull requests) and report any problems faced with current ones.

## License

Android Studio Templates is Copyright (c) 2016 Prolific Interactive. It may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: /LICENSE

## Maintainers

![prolific](https://s3.amazonaws.com/prolificsitestaging/logos/Prolific_Logo_Full_Color.png)

Android Studio Templates is maintained and funded by Prolific Interactive. The names and logos are trademarks of Prolific Interactive.
