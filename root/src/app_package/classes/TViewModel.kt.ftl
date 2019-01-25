package ${packageName}.${folderNameUi}.${folderNameDemo};
import androidx.lifecycle.ViewModel
import javax.inject.Inject
import ${packageName}.${folderNameRepository}.${repositoryClass}
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData

import ${packageName}.${folderRoom}.${entityClass}


class ${viewModelClass} @Inject constructor(val repository: ${repositoryClass}) : ViewModel() {

    val postsData  = MutableLiveData<List<${entityClass}>>()
    fun getPosts() {
        repository.getPosts().enqueue(object : Callback<List<${entityClass}>> {
            override fun onFailure(call: Call<List<${entityClass}>>, t: Throwable) {
                postsData.value = null
            }
            override fun onResponse(call: Call<List<${entityClass}>>, response: Response<List<${entityClass}>>) {
                if(response.isSuccessful)
                {
                    postsData.value = response.body()
                }
            }
        })
    }

    fun getPostsObserver(): LiveData<List<${entityClass}>> = postsData


    fun savePostInDB(post: ${entityClass}) {
        repository.savePostInDB(post)
    }

    fun getPostsFromDB(): LiveData<List<${entityClass}>> {
        return repository.getPostsFromLocalDB()
    }

}