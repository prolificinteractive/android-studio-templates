package com.motel6.android.ui.booking;

import com.motel6.android.dagger.PerActivity;
import com.motel6.android.data.api.YourApiClient;
import com.motel6.android.data.util.RxUtils;
import com.motel6.android.ui.base.mvp.Presenter;
import javax.inject.Inject;
import rx.Subscription;

@PerActivity
public class BlankPresenter extends Presenter<BlankView> {

  private final YourApiClient api;

  private Subscription dataSubscription;

  @Inject public BlankPresenter(final YourApiClient api) {
    this.api = api;
  }

  @Override protected void onDestroyed() {
    RxUtils.unSubscribeIfNeeded(dataSubscription);
  }
}