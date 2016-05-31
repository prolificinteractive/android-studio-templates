package com.ppfa.data.dagger.components;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.res.Resources;
import com.google.gson.Gson;
import com.ppfa.onlinecare.android.member.internal.debug.YourApp;
import com.ppfa.data.dagger.PerApp;
import com.ppfa.data.dagger.modules.YourAppModule;
import com.squareup.picasso.Picasso;
import dagger.Component;
import okhttp3.OkHttpClient;

/**
 * Parent AppComponent for injecting app-scoped singleton dependencies throughout the app.
 */
@PerApp
@Component(
    modules = {
        YourAppModule.class,
        // TODO: 5/31/16 Add your modules here
    })
public interface YourAppComponent {
  Application application();

  Resources resources();

  SharedPreferences sharedPreferences();

  Gson gson();

  OkHttpClient client();

  Picasso picasso();

  void inject(YourApp app);

  final class Initializer {
    private Initializer() {
      throw new AssertionError("No instances.");
    }

    public static YourAppComponent init(YourApp app) {
      return DaggerYourAppComponent.builder()
          // TODO: Add your modules here
          .build();
    }
  }
}
