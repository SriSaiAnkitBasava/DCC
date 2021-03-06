package io.wexchain.android.common

import android.os.Handler
import android.os.Looper

private val mainHandler = Handler(Looper.getMainLooper())

fun runOnMainThread(block:()->Unit){
    if (isOnMainThread()){
        block()
    }else {
        postOnMainThread(block)
    }
}

fun postOnMainThread(block: () -> Unit) {
    mainHandler.post(block)
}

