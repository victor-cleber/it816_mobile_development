package com.mysit.lab_7c_webview;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import androidx.annotation.NonNull;

public class MyAppWebViewClient extends WebViewClient {

    @Override
    public boolean shouldOverrideUrlLoading(WebView view, String url)
    {
        if (Uri.parse(url).getHost().endsWith("html5rocks.com")) {

            return false;
        }
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));

        view.getContext().startActivity(intent);

        return true;
    }
}
