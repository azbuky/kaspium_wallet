package com.novice.flutter_nfc_hce

import android.app.Activity
import android.content.Intent
import android.content.pm.PackageManager
import android.nfc.NfcAdapter
import android.os.Build
import android.util.Log
import androidx.annotation.RequiresApi
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FlutterNfcHcePlugin */
class FlutterNfcHcePlugin: FlutterPlugin, MethodCallHandler, ActivityAware  {
    // add code
    private var mNfcAdapter: NfcAdapter? = null
    private var activity: Activity? = null
    private lateinit var channel : MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_nfc_hce")
        channel.setMethodCallHandler(this)
    }

    //2023.09.15 refactoring code
    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "getPlatformVersion" -> {
                result.success("Android ${android.os.Build.VERSION.RELEASE}")
            }
            "startNfcHce" -> {
                val content = call.argument<String>("content")
                val mimeType = call.argument<String>("mimeType")
                val persistMessage = call.argument<Boolean>("persistMessage")

                if (content != null && mimeType != null && persistMessage != null) {
                    startNfcHce(content, mimeType, persistMessage)
                    result.success("success")
                } else {
                    result.success("failure")
                }
            }
            "stopNfcHce" -> {
                stopNfcHce()
                result.success("success")
            }
            "isNfcHceSupported" -> {
                if (isNfcHceSupported()) {
                    result.success("true")
                } else {
                    result.success("false")
                }
            }
            "isSecureNfcEnabled" -> {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q && isSecureNfcEnabled()) {
                    result.success("true")
                } else {
                    result.success("false")
                }
            }
            "isNfcEnabled" -> {
                if (isNfcEnabled()) {
                    result.success("true")
                } else {
                    result.success("false")
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onDetachedFromActivity() {
        activity = null
        mNfcAdapter = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
        mNfcAdapter = NfcAdapter.getDefaultAdapter(activity)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        mNfcAdapter = NfcAdapter.getDefaultAdapter(activity)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
        mNfcAdapter = null
    }
    private fun startNfcHce(content: String, mimeType: String, persistMessage: Boolean) {
        if (isNfcHceSupported()) {
            Log.i("TEST", "---------------------->isNfcHceSupported: " + isNfcHceSupported())
            initService(content, mimeType, persistMessage)
        }
    }
    private fun stopNfcHce() {
        val intent = Intent(activity, KHostApduService::class.java)
        activity?.stopService(intent)
    }

    private fun isNfcHceSupported() =
        isNfcEnabled() && activity?.packageManager!!.hasSystemFeature(PackageManager.FEATURE_NFC_HOST_CARD_EMULATION)

    //2023.09.08 add function
    @RequiresApi(Build.VERSION_CODES.Q)
    private fun isSecureNfcEnabled(): Boolean {
        Log.i("TEST", "---------------------->isSecureNfcEnabled: " + mNfcAdapter?.isSecureNfcEnabled)

        return mNfcAdapter?.isSecureNfcEnabled == true
    }

    private fun initService(content: String, mimeType: String, persistMessage: Boolean) {
        val intent = Intent(activity, KHostApduService::class.java)
        intent.putExtra("content", content)
        intent.putExtra("mimeType", mimeType)
        intent.putExtra("persistMessage", persistMessage)
        activity?.startService(intent)
    }

    private fun isNfcEnabled(): Boolean {
        return mNfcAdapter?.isEnabled == true
    }
}
