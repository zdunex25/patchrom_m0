.class public Lcom/android/updater/FetchRomInfoTask;
.super Landroid/os/AsyncTask;
.source "FetchRomInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/FetchRomInfoTask$RomInfoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/updater/RomInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

.field private context:Landroid/content/Context;

.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/updater/FetchRomInfoTask;-><init>(Landroid/content/Context;Lcom/android/updater/FetchRomInfoTask$RomInfoListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/updater/FetchRomInfoTask$RomInfoListener;)V
    .locals 1
    .parameter "ctx"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    .line 37
    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->context:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/updater/FetchRomInfoTask;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    .line 47
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/updater/RomInfo;
    .locals 15
    .parameter "notused"

    .prologue
    .line 56
    invoke-static {}, Lcom/android/updater/Utils;->isROMSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->context:Landroid/content/Context;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/updater/Utils;->dataAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->context:Landroid/content/Context;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v12, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "rom"

    invoke-static {}, Lcom/android/updater/Utils;->getRomID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 71
    .local v7, client:Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.otaupdatecenter.pro/pages/romupdate.php?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v12, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 72
    .local v10, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v7, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 73
    .local v13, r:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 74
    .local v14, status:I
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 75
    .local v9, e:Lorg/apache/http/HttpEntity;
    const/16 v0, 0xc8

    if-ne v14, v0, :cond_3

    .line 76
    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, data:Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v11, json:Lorg/json/JSONObject;
    const-string v0, "error"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "OTA::Fetch"

    const-string v1, "error"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "error"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 85
    :cond_2
    new-instance v0, Lcom/android/updater/RomInfo;

    .line 86
    const-string v1, "rom"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "version"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "changelog"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v4, "url"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    const-string v5, "md5"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    const-string v6, "date"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/updater/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/android/updater/RomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 97
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #data:Ljava/lang/String;
    .end local v9           #e:Lorg/apache/http/HttpEntity;
    .end local v10           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #json:Lorg/json/JSONObject;
    .end local v12           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v13           #r:Lorg/apache/http/HttpResponse;
    .end local v14           #status:I
    :catch_0
    move-exception v9

    .line 98
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 93
    .restart local v7       #client:Lorg/apache/http/client/HttpClient;
    .local v9, e:Lorg/apache/http/HttpEntity;
    .restart local v10       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v13       #r:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:I
    :cond_3
    if-eqz v9, :cond_4

    :try_start_1
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 94
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server responded with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/updater/FetchRomInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/android/updater/RomInfo;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/android/updater/RomInfo;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    if-eqz v0, :cond_0

    .line 108
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    invoke-interface {v0, p1}, Lcom/android/updater/FetchRomInfoTask$RomInfoListener;->onLoaded(Lcom/android/updater/RomInfo;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    iget-object v1, p0, Lcom/android/updater/FetchRomInfoTask;->error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/updater/FetchRomInfoTask$RomInfoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/android/updater/RomInfo;

    invoke-virtual {p0, p1}, Lcom/android/updater/FetchRomInfoTask;->onPostExecute(Lcom/android/updater/RomInfo;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/FetchRomInfoTask;->callback:Lcom/android/updater/FetchRomInfoTask$RomInfoListener;

    invoke-interface {v0}, Lcom/android/updater/FetchRomInfoTask$RomInfoListener;->onStartLoading()V

    .line 52
    :cond_0
    return-void
.end method
