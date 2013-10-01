.class public Lcom/android/updater/Contributors;
.super Landroid/app/Activity;
.source "Contributors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f06003f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-virtual {p0}, Lcom/android/updater/Contributors;->finish()V

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v10, 0x0

    .line 38
    .local v10, in:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 40
    .local v7, data:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 41
    .end local v7           #data:Ljava/lang/StringBuilder;
    .local v8, data:Ljava/lang/StringBuilder;
    const/16 v2, 0x800

    :try_start_1
    new-array v6, v2, [C

    .line 42
    .local v6, buf:[C
    const/4 v12, -0x1

    .line 43
    .local v12, nRead:I
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/android/updater/Contributors;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "team.html"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 44
    .end local v10           #in:Ljava/io/BufferedReader;
    .local v11, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v11, v6}, Ljava/io/BufferedReader;->read([C)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2

    .line 52
    if-eqz v11, :cond_0

    .line 53
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 58
    :cond_0
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-direct {p0}, Lcom/android/updater/Contributors;->showErrorAndFinish()V

    move-object v7, v8

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    move-object v10, v11

    .line 74
    .end local v6           #buf:[C
    .end local v11           #in:Ljava/io/BufferedReader;
    .end local v12           #nRead:I
    .restart local v10       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    return-void

    .line 45
    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v6       #buf:[C
    .restart local v8       #data:Ljava/lang/StringBuilder;
    .restart local v11       #in:Ljava/io/BufferedReader;
    .restart local v12       #nRead:I
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v8, v6, v2, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v9

    move-object v7, v8

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    move-object v10, v11

    .line 48
    .end local v6           #buf:[C
    .end local v11           #in:Ljava/io/BufferedReader;
    .end local v12           #nRead:I
    .local v9, e:Ljava/io/IOException;
    .restart local v10       #in:Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    const-string v1, "OTA::Contrib"

    const-string v2, "IOException reading contributor list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/android/updater/Contributors;->showErrorAndFinish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 52
    if-eqz v10, :cond_1

    .line 53
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 54
    :catch_1
    move-exception v1

    goto :goto_2

    .line 51
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 52
    :goto_4
    if-eqz v10, :cond_3

    .line 53
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 56
    :cond_3
    :goto_5
    throw v1

    .line 63
    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v6       #buf:[C
    .restart local v8       #data:Ljava/lang/StringBuilder;
    .restart local v11       #in:Ljava/io/BufferedReader;
    .restart local v12       #nRead:I
    :cond_4
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/android/updater/Contributors$1;

    invoke-direct {v1, p0}, Lcom/android/updater/Contributors$1;-><init>(Lcom/android/updater/Contributors;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v7, v8

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    move-object v10, v11

    .line 74
    .end local v11           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 54
    .end local v0           #webView:Landroid/webkit/WebView;
    .end local v6           #buf:[C
    .end local v12           #nRead:I
    :catch_2
    move-exception v2

    goto :goto_5

    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v6       #buf:[C
    .restart local v8       #data:Ljava/lang/StringBuilder;
    .restart local v11       #in:Ljava/io/BufferedReader;
    .restart local v12       #nRead:I
    :catch_3
    move-exception v2

    goto :goto_1

    .line 51
    .end local v6           #buf:[C
    .end local v11           #in:Ljava/io/BufferedReader;
    .end local v12           #nRead:I
    .restart local v10       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    goto :goto_4

    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #in:Ljava/io/BufferedReader;
    .restart local v6       #buf:[C
    .restart local v8       #data:Ljava/lang/StringBuilder;
    .restart local v11       #in:Ljava/io/BufferedReader;
    .restart local v12       #nRead:I
    :catchall_2
    move-exception v1

    move-object v7, v8

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    move-object v10, v11

    .end local v11           #in:Ljava/io/BufferedReader;
    .restart local v10       #in:Ljava/io/BufferedReader;
    goto :goto_4

    .line 47
    .end local v6           #buf:[C
    .end local v12           #nRead:I
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    :catch_5
    move-exception v9

    move-object v7, v8

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    goto :goto_3
.end method
