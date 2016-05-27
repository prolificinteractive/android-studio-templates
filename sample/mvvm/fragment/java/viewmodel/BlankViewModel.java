package com.motel6.android.ui.gallery.viewmodel;

import com.motel6.android.base.BaseViewModel;
import com.motel6.android.ui.gallery.view.BlankView;
import javax.inject.Inject;

public class BlankViewModel extends BaseViewModel<BlankView> {

  @Inject public BlankViewModel() {
    super(BlankView.class);
  }

  @Override protected BlankView getEmptyView() {
    return new BlankView() {
    };
  }
}
