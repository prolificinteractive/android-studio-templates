<manifest xmlns:android="http://schemas.android.com/apk/res/android" 
  >
  <application
      >
    <activity 
        android:name="${relativePackage}.${packName}.${className}"
        android:label="@string/title_${packName}"
        />
  </application>
</manifest>