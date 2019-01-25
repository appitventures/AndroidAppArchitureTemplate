package ${packageName};
import dagger.android.support.DaggerApplication
import dagger.android.AndroidInjector
import ${packageName}.${folderNameDi}.Dagger${diAppComponent}



class ${applicationClass} : DaggerApplication() {


        override fun applicationInjector(): AndroidInjector<out DaggerApplication> {
            return Dagger${diAppComponent}.builder().create(this)
        }

}
