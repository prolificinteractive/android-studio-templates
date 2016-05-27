package com.motel6.android.ui.blank;

import com.motel6.android.dagger.PerActivity;
import dagger.Subcomponent;

@PerActivity
@Subcomponent(
    modules = {
        BlankModule.class
    }
)
public interface BlankComponent {
  void inject(BlankActivity activity);
}