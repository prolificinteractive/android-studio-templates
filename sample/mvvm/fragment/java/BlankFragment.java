package com.motel6.android.ui.gallery;

import android.content.Context;
import android.content.Intent;
import com.motel6.android.R;
import com.motel6.android.base.BaseBindingFragment;
import com.motel6.android.ui.gallery.view.BlankView;
import com.motel6.android.ui.gallery.viewmodel.BlankViewModel;

public class BlankFragment 
    extends BaseBindingFragment<FragmentBlankBinding, BlankViewModel, BlankView> 
    implements BlankView {


  public static BlankFragment newInstance() {
    return new BlankFragment();
  }

  @Override protected int getLayoutId() {
    return R.layout.fragment_blank;
  }

  @Override protected void initializeDependencyInjector() {
    getComponent(BlankComponent.class).inject(this);
  }
}
