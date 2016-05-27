package com.motel6.android.ui.gallery;

import dagger.Component;

@PerActivity
@Component(
    modules = {
        BaseActivityModule.class
    },
    dependencies = AppComponent.class
)
public interface BlankComponent {
  void inject(BlankActivity activity);

  final class Initializer {
    private Initializer() {
      throw new AssertionError("No instances.");
    }

    public static BlankComponent init(BlankActivity activity) {
      return DaggerBlankComponent.builder()
          .appComponent(
              Injector.obtain(activity.getApplicationContext(), AppComponent.class))
          .baseActivityModule(new BaseActivityModule(activity))
          .blankModule(new BlankModule(activity))
          .build();
    }
  }
}