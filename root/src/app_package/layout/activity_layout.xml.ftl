<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
                                             xmlns:app="http://schemas.android.com/apk/res-auto"
                                             android:layout_width="match_parent"
                                             android:layout_height="match_parent"
>

    <FrameLayout
            android:id="@+id/fragmentDashboardContentId"
            android:layout_width="match_parent"
            android:layout_height="0dp"
            app:layout_constraintBottom_toTopOf="@id/bottomNavigationLine"
            app:layout_constraintLeft_toLeftOf="parent"
            app:layout_constraintRight_toRightOf="parent"
            app:layout_constraintTop_toTopOf="parent">

    </FrameLayout>

    <View
            android:id="@+id/bottomNavigationLine"
            android:layout_width="match_parent"
            android:layout_height="0.8dp"
            android:background="#f5f5f5"
            app:layout_constraintBottom_toTopOf="@id/bottomNavigationDashboardId"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent"/>
    <com.google.android.material.bottomnavigation.BottomNavigationView
            android:id="@+id/bottomNavigationDashboardId"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_gravity="bottom"
            android:showAsAction="always|withText"
            app:itemTextColor="@drawable/bottom_navigation_tab_selector"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintLeft_toLeftOf="parent"
            app:layout_constraintRight_toRightOf="parent"
            app:menu="@menu/menu_bottom_navigation"
            android:background="#ffffff"
            app:elevation="0dp"/>
</androidx.constraintlayout.widget.ConstraintLayout>