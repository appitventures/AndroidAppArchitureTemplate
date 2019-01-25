package ${packageName}.${folderNameUi}.${folderNameDemo};


import android.os.Bundle
import android.view.MenuItem
import androidx.fragment.app.Fragment
import ${packageName}.${folderNameUi}.${baseActivityClass}
import ${packageName}.R
import kotlinx.android.synthetic.main.${escapeXmlAttribute(layoutName)}.*

class ${activityClass} : ${baseActivityClass}() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})
        addFragment(${fragmentOne}.newInstance())
        initialiseBottomNavigationClickListener()

    }

     private fun initialiseBottomNavigationClickListener() {
         bottomNavigationDashboardId.setOnNavigationItemSelectedListener { item: MenuItem ->
             addFragmentBasedOnId(item.itemId)
             true
         }

     }

     private fun addFragment(fragment: Fragment) {
         supportFragmentManager
             .beginTransaction()
             .replace(R.id.fragmentDashboardContentId, fragment, fragment.javaClass.simpleName)
             .commit()

     }

     private fun addFragmentBasedOnId(itemId: Int) {
         when (itemId) {
             R.id.item_remote_fragment -> {
                 var currentFragment =  supportFragmentManager.findFragmentByTag("${fragmentTwo}")
                 if(currentFragment ==null)
                     addFragment(${fragmentTwo}.newInstance())
             }
             R.id.item_local_fragment -> {
                 var currentFragment =  supportFragmentManager.findFragmentByTag("${fragmentOne}")
                 if(currentFragment ==null)
                     addFragment(${fragmentOne}.newInstance())
             }

         }

     }



}