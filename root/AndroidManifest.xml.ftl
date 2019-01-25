<manifest xmlns:android="http://schemas.android.com/apk/res/android"
package="${packageName}">

    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.INTERNET"/>

    <application
        android:allowBackup="true"
        android:label="@string/app_name"
        android:icon="@mipmap/ic_launcher"
        android:roundIcon="@mipmap/ic_launcher_round"
        android:supportsRtl="true"
        android:theme="@style/AppTheme"
        android:name=".${applicationClass}"
    >
        <activity android:name="${packageName}.${folderNameUi}.${folderNameDemo}.${activityClass}">
        </activity>

        <activity android:name="${packageName}.${folderNameUi}.${splashActivityClass}">
                   <intent-filter>
                        <action android:name="android.intent.action.MAIN" />
                        <category android:name="android.intent.category.LAUNCHER" />
                    </intent-filter>
        </activity>

    </application>

</manifest>