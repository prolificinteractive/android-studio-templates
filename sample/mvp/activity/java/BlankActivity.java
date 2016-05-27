package com.motel6.android.ui.blank;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.motel6.android.R;
import com.motel6.android.dagger.Injector;
import com.motel6.android.ui.base.mvp.PresenterActivity;

public class BlankActivity
    extends PresenterActivity<BlankPresenter, BlankView>
    implements BlankView {

  private BlankComponent component;

  public static void start(final Context context) {
    context.startActivity(new Intent(context, BlankActivity.class));
  }

  @Override protected int getLayoutId() {
    return R.layout.activity_blank;
  }

  @Override protected void initializeDependencyInjector() {
    component = YourApp.get(this)
        .getComponent()
        .plus(new BlankModule());
    component.inject(this);
  }

  @Override public Object getSystemService(@NonNull final String name) {
    if (Injector.matchesService(name, BlankComponent.class)) {
      return component;
    }
    return super.getSystemService(name);
  }
}
