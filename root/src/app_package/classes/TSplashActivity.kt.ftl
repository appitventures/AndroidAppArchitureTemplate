package ${packageName}.${folderNameUi};


import android.os.Bundle
import android.view.View
import android.os.Handler
import android.content.Intent
import ${packageName}.R
import ${packageName}.${folderNameUi}.${baseActivityClass}
import ${packageName}.${folderNameUi}.${folderNameDemo}.${activityClass}



class ${splashActivityClass} : ${baseActivityClass}() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutNameSplash})
        Handler().postDelayed({ launchActivity() }, 1000)


    }

    override fun onResume() {
        super.onResume()
        hideNavigation()
    }

    private fun hideNavigation() {


        this.window.decorView.systemUiVisibility =
                View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or
                View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                View.SYSTEM_UI_FLAG_LAYOUT_STABLE


    }

 private fun launchActivity() {
        val intent = Intent(this, ${activityClass}::class.java)
        startActivity(intent)
        finish()
    }


}
