<resources>

    <!-- Base application theme. -->
    <style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
        <!-- Customize your theme here. -->
        <item name="colorPrimary">@color/colorPrimary</item>
        <item name="colorPrimaryDark">@color/colorPrimaryDark</item>
        <item name="colorAccent">@color/colorAccent</item>
        <item name="android:textColorPrimary">@android:color/black</item>
        <item name="android:textColorSecondary">@android:color/black</item>
        <item name="actionBarStyle">@style/MyActionBar</item>
    </style>


    <style name="MyActionBar" parent="@style/Widget.AppCompat.ActionBar.Solid">
        <item name="titleTextStyle">@style/MyTitleTextStyle</item>
    </style>

    <style name="MyTitleTextStyle" parent="@style/TextAppearance.AppCompat.Widget.ActionBar.Title">
        <item name="android:textColor">@color/colorAccent</item>
    </style>

</resources>
