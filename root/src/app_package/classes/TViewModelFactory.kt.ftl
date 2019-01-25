package ${packageName}.${folderNameDi};

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider

import javax.inject.Inject
import javax.inject.Provider
import javax.inject.Singleton

@Singleton
class ${diViewModelFactory} @Inject constructor(
        private val creators: Map<Class<out ViewModel>, @JvmSuppressWildcards Provider<ViewModel>>)
    : ViewModelProvider.Factory {

    @Suppress("UNCHECKED_CAST")
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        var creator: Provider<ViewModel>? = creators[modelClass]
        if (creator == null) {
//            CommonUtils.showLog("ViewModelFactory", "view model Null")
            for ((key, value) in creators) {
//                CommonUtils.showLog("ViewModelFactory", "Key : " + key.name + " value : " + value.javaClass.name)
                if (modelClass.isAssignableFrom(key)) {
                    creator = value
                    break
                }
            }
        } /*else {
            CommonUtils.showLog("ViewModelFactory", "------------------------------------------------")
            for ((key, value) in creators) {
                CommonUtils.showLog("ViewModelFactory", "Key : " + key.name + " value : " + value.javaClass.name)
            }
            CommonUtils.showLog("ViewModelFactory", "------------------------------------------------")
        }*/
        if (creator == null) throw IllegalArgumentException("unknown model class $modelClass")
        try {
            return creator.get() as T
        } catch (e: Exception) {
            throw RuntimeException(e)
        }
    }
}