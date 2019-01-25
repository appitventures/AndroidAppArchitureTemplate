package ${packageName}.${folderNameDi};
 
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import ${packageName}.${folderNameUi}.${folderNameDemo}.${viewModelClass};

import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.multibindings.IntoMap
import javax.inject.Provider


@Module
abstract class ${diViewModelModule} {

    @Binds
    @IntoMap
    @ViewModelKey(${viewModelClass}::class)
    abstract fun bind${viewModelClass}(viewModel: ${viewModelClass}): ViewModel


    @Module
    companion object {
        @JvmStatic
        @Provides
        fun providesViewModelFactory(creators: Map<Class<out ViewModel>, @JvmSuppressWildcards Provider<ViewModel>>): ViewModelProvider.Factory {
            return ViewModelFactory(creators)
        }
    }


}