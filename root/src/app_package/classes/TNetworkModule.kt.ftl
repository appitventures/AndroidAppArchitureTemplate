package ${packageName}.${folderNameDi};
import dagger.Module
import android.content.Context
import dagger.Provides

import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit
import javax.inject.Named
import javax.inject.Singleton

import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor

import ${packageName}.${folderNameRetrofit}.${apiEndPointClass}
import ${packageName}.${folderNameRetrofit}.${apiServiceClass}

import com.google.gson.Gson
import com.google.gson.GsonBuilder

import ${packageName}.${folderNameHelper}.${networkInterceptorClass}
import ${packageName}.${folderNameHelper}.${checkNetworkClass}
import ${packageName}.${folderNameHelper}.${noNetworkExceptionClass}





@Module
class ${diNetworkModule}{



    @Provides
    @Singleton
    fun provideGson(context: Context): Gson {
        val gsonBuilder = GsonBuilder()
        return gsonBuilder.create()
    }


    @Singleton
    @Provides
    fun provideRetrofit(okHttpClient: OkHttpClient, gson: Gson): Retrofit {
        return Retrofit.Builder()
                .addConverterFactory(GsonConverterFactory.create(gson))
                .baseUrl(ApiEndPoint.BASE_URL)
                .client(okHttpClient)
                .build()
    }


    @Provides
    @Singleton
    fun provideOkHttpClient(context: Context): OkHttpClient {
        val logging = HttpLoggingInterceptor()
                .setLevel(HttpLoggingInterceptor.Level.HEADERS)
                .setLevel(HttpLoggingInterceptor.Level.BODY)
        val client = OkHttpClient.Builder()
                .connectTimeout(100, TimeUnit.SECONDS)
                .writeTimeout(30, TimeUnit.SECONDS)
                .readTimeout(100, TimeUnit.SECONDS)

        client.addInterceptor(logging)

        client.addInterceptor((object : ${networkInterceptorClass}() {
            override val isInternetAvailable: Boolean
                get() = ${checkNetworkClass}.isNetworkConnected(context)

            override fun onInternetUnavailable() {
                throw ${noNetworkExceptionClass}(context)
            }
        }))


        return client.build()
    }



    @Provides
    @Singleton
    fun provideApiService(retrofit: Retrofit): ${apiServiceClass} {
        return retrofit.create(${apiServiceClass}::class.java)
    }


}