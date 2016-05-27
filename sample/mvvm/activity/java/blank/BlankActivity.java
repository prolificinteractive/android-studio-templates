package com.motel6.android.ui.blank;

import android.content.Context;
import android.content.Intent;
import com.motel6.android.R;
import com.motel6.android.ui.base.BaseBindingActivity;
import com.motel6.android.ui.blank.view.BlankView;
import com.motel6.android.ui.blank.viewmodel.BlankViewModel;

public class BlankActivity
    extends BaseBindingActivity<ActivityBlankBinding, BlankViewModel, BlankView>
    implements BlankView, HasComponent<BlankComponent> {

  private BlankComponent component;

  public static void start(final Context context) {
    context.startActivity(new Intent(context, BlankActivity.class));
  }

  @Override protected int getLayoutId() {
    return R.layout.activity_blank;
  }

  @Override protected void initializeDependencyInjector() {
    component = BlankComponent.Initializer.init(this);
    component.inject(this);
  }

  @Override public BlankComponent getComponent() {
    return component;
  }
}
