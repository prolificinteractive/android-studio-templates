package com.ppfa.data.dagger.modules;

import android.app.Application;
import android.content.res.Resources;
import com.ppfa.onlinecare.android.member.internal.debug.YourApp;
import com.ppfa.data.dagger.PerApp;
import dagger.Module;
import dagger.Provides;

@Module
public class YourAppModule {

  private final YourApp app;

  public YourAppModule(YourApp app) {
    this.app = app;
  }

  @Provides @PerApp YourApp provideYourApp() {
    return app;
  }

  @Provides @PerApp Application provideApplication(YourApp app) {
    return app;
  }

  @Provides @PerApp Resources provideResources(Application app) {
    return app.getResources();
  }
}

