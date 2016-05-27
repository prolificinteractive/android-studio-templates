package com.motel6.android.ui.booking;

import com.motel6.android.R;
import com.motel6.android.dagger.Injector;
import com.motel6.android.ui.base.mvp.PresenterFragment;

public class BlankFragment
    extends PresenterFragment<BlankPresenter, BlankView>
    implements BlankView {

  public static BlankFragment newInstance() {
    return new BlankFragment();
  }

  @Override protected int getLayoutId() {
    return R.layout.fragment_blank;
  }

  @Override protected void initializeDependencyInjector() {
    Injector.obtain(getContext(), BlankComponent.class).inject(this);
  }
}
