package com.ppfa.data.dagger;

import android.content.Context;

public final class Injector {
  private Injector() {
    throw new AssertionError("No instances.");
  }

  @SuppressWarnings({ "ResourceType", "unchecked cast" }) // Explicitly doing a custom service.
  public static <T> T obtain(Context context, Class<T> componentClass) {
    return (T) context.getSystemService(componentClass.getName());
  }

  public static <T> boolean matchesService(String name, Class<T> componentName) {
    return componentName.getName().equals(name);
  }
}

