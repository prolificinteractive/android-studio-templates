package ${packageName}.dagger.components;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.res.Resources;
import com.google.gson.Gson;
<#if applicationPackage??>import ${applicationPackage}.${Name};</#if>
import ${packageName}.dagger.PerApp;
import ${packageName}.dagger.modules.${Name}Module;
import com.squareup.picasso.Picasso;
import dagger.Component;
import okhttp3.OkHttpClient;

/**
 * Parent AppComponent for injecting app-scoped singleton dependencies throughout the app.
 */
@PerApp
@Component(
    modules = {
    	${Name}Module.class,
        // TODO: 5/31/16 Add your modules here
    })
public interface ${Name}Component {
  Application application();

  Resources resources();

  SharedPreferences sharedPreferences();

  Gson gson();

  OkHttpClient client();

  Picasso picasso();

  void inject(${Name} app);

  final class Initializer {
    private Initializer() {
      throw new AssertionError("No instances.");
    }

    public static ${Name}Component init(${Name} app) {
      return Dagger${Name}Component.builder()
        // TODO: Add your modules here
        .build();
    }
  }
}
