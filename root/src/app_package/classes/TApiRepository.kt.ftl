package ${packageName}.${folderNameRepository};
import ${packageName}.${folderNameRetrofit}.${apiServiceClass}
import retrofit2.Call

import ${packageName}.${folderRoom}.${databaseName}
import ${packageName}.${folderRoom}.${entityClass}
import androidx.lifecycle.LiveData




class ${repositoryClass} constructor(private val apiService: ${apiServiceClass},private val database: ${databaseName}) {

    fun getPosts() : Call<List<${entityClass}>>
    {
        return apiService.getPosts()
    }

    fun savePostInDB(entity: ${entityClass})
    {
        val thread = Thread(Runnable { database.postDAO().savePost(entity) })
        thread.start()
    }

    fun getPostsFromLocalDB(): LiveData<List<${entityClass}>>
    {
        return database.postDAO().getPosts()
    }


}