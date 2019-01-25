<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
              android:layout_width="match_parent"
              android:layout_height="match_parent"
              android:orientation="vertical">


    <androidx.recyclerview.widget.RecyclerView
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:id="@+id/recyclerViewLocal">


    </androidx.recyclerview.widget.RecyclerView>


    <com.google.android.material.floatingactionbutton.FloatingActionButton
            android:layout_width="wrap_content"
            android:id="@+id/buttonInsert"
            android:layout_height="wrap_content"
            android:layout_alignParentBottom="true"
            android:layout_alignParentRight="true"
            android:layout_margin="15dp"
            android:src="@android:drawable/ic_input_add"
            android:tint="@android:color/white"
    />
     <LinearLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:layout_centerInParent="true"
                android:id="@+id/defaultText"
         >
            <TextView android:layout_width="match_parent"
                      android:layout_height="wrap_content"
                      android:text="@string/default_text"
                      android:gravity="center_horizontal"
                      android:textColor="@color/gray"
            />

        </LinearLayout>

</RelativeLayout>
