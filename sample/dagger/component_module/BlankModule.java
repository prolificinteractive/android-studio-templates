package com.motel6.android.ui.gallery;

import com.motel6.android.ui.gallery.PerActivity;
import dagger.Module;
import dagger.Provides;

@Module
public class BlankModule {
  private final BlankActivity activity;

  public BlankModule(BlankActivity activity) {
    this.activity = activity;
  }

  @Provides @PerActivity BlankActivity provideActivity() {
    return activity;
  }
}
