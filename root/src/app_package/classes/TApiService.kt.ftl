package ${packageName}.${folderNameRetrofit};

import retrofit2.Call
import retrofit2.http.GET
import ${packageName}.${folderRoom}.${entityClass}


interface ${apiServiceClass} {

    @GET(value ="posts")
    fun getPosts(): Call<List<${entityClass}>>
}