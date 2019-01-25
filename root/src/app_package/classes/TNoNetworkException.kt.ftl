package ${packageName}.${folderNameHelper};

import android.content.Context
import java.io.IOException


class ${noNetworkExceptionClass}(context: Context) : IOException() {
    private val mContext: Context = context

    override val message: String?
        get() = "No Internet"
}