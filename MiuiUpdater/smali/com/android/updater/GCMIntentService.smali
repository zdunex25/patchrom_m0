.class public Lcom/android/updater/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "1068482628480"

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "errorID"

    .prologue
    .line 46
    const-string v0, "OTA::GCMError"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "payload"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/updater/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/updater/Config;->getInstance(Landroid/content/Context;)Lcom/android/updater/Config;

    move-result-object v0

    .line 52
    .local v0, cfg:Lcom/android/updater/Config;
    invoke-static {p2}, Lcom/android/updater/RomInfo;->fromIntent(Landroid/content/Intent;)Lcom/android/updater/RomInfo;

    move-result-object v1

    .line 54
    .local v1, info:Lcom/android/updater/RomInfo;
    invoke-static {v1}, Lcom/android/updater/Utils;->isUpdate(Lcom/android/updater/RomInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const-string v2, "OTA::GCM"

    const-string v3, "got GCM message, not update"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Lcom/android/updater/Config;->clearStoredUpdate()V

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/updater/Config;->storeUpdate(Lcom/android/updater/RomInfo;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/updater/Config;->getShowNotif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "OTA::GCM"

    const-string v3, "got GCM message"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p1, v1}, Lcom/android/updater/Utils;->showUpdateNotif(Landroid/content/Context;Lcom/android/updater/RomInfo;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "OTA::GCM"

    const-string v3, "got GCM message, notif not shown"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .parameter "ctx"
    .parameter "regID"

    .prologue
    .line 71
    const-string v2, "OTA::GCMRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCM registered - ID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v13, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "do"

    const-string v4, "register"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "reg_id"

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "rom_id"

    invoke-static {}, Lcom/android/updater/Utils;->getRomID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_id"

    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/updater/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :try_start_0
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 81
    .local v11, http:Lorg/apache/http/client/HttpClient;
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "https://www.otaupdatecenter.pro/pages/regdevice2.php"

    invoke-direct {v15, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 82
    .local v15, req:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v15, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 84
    invoke-interface {v11, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 85
    .local v14, r:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 86
    .local v16, status:I
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 87
    .local v10, e:Lorg/apache/http/HttpEntity;
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 88
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, data:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const-string v2, "OTA::GCMRegister"

    const-string v3, "No response to registration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #e:Lorg/apache/http/HttpEntity;
    .end local v11           #http:Lorg/apache/http/client/HttpClient;
    .end local v14           #r:Lorg/apache/http/HttpResponse;
    .end local v15           #req:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #status:I
    :goto_0
    return-void

    .line 93
    .restart local v9       #data:Ljava/lang/String;
    .restart local v10       #e:Lorg/apache/http/HttpEntity;
    .restart local v11       #http:Lorg/apache/http/client/HttpClient;
    .restart local v14       #r:Lorg/apache/http/HttpResponse;
    .restart local v15       #req:Lorg/apache/http/client/methods/HttpPost;
    .restart local v16       #status:I
    :cond_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v12, json:Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "OTA::GCMRegister"

    const-string v3, "Empty response to registration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #e:Lorg/apache/http/HttpEntity;
    .end local v11           #http:Lorg/apache/http/client/HttpClient;
    .end local v12           #json:Lorg/json/JSONObject;
    .end local v14           #r:Lorg/apache/http/HttpResponse;
    .end local v15           #req:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #status:I
    :catch_0
    move-exception v10

    .line 129
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .restart local v9       #data:Ljava/lang/String;
    .local v10, e:Lorg/apache/http/HttpEntity;
    .restart local v11       #http:Lorg/apache/http/client/HttpClient;
    .restart local v12       #json:Lorg/json/JSONObject;
    .restart local v14       #r:Lorg/apache/http/HttpResponse;
    .restart local v15       #req:Lorg/apache/http/client/methods/HttpPost;
    .restart local v16       #status:I
    :cond_1
    :try_start_1
    const-string v2, "error"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    const-string v2, "OTA::GCMRegister"

    const-string v3, "error"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Lcom/android/updater/RomInfo;

    .line 106
    const-string v2, "rom"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v3, "version"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string v4, "changelog"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v5, "url"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    const-string v6, "md5"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    const-string v7, "date"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/updater/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 105
    invoke-direct/range {v1 .. v7}, Lcom/android/updater/RomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 113
    .local v1, info:Lcom/android/updater/RomInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/updater/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/updater/Config;->getInstance(Landroid/content/Context;)Lcom/android/updater/Config;

    move-result-object v8

    .line 114
    .local v8, cfg:Lcom/android/updater/Config;
    invoke-static {v1}, Lcom/android/updater/Utils;->isUpdate(Lcom/android/updater/RomInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {v8, v1}, Lcom/android/updater/Config;->storeUpdate(Lcom/android/updater/RomInfo;)V

    .line 116
    invoke-virtual {v8}, Lcom/android/updater/Config;->getShowNotif()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/updater/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/updater/Utils;->showUpdateNotif(Landroid/content/Context;Lcom/android/updater/RomInfo;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v2, "OTA::GCMRegister"

    const-string v3, "got update response, notif not shown"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v8}, Lcom/android/updater/Config;->clearStoredUpdate()V

    goto/16 :goto_0

    .line 125
    .end local v1           #info:Lcom/android/updater/RomInfo;
    .end local v8           #cfg:Lcom/android/updater/Config;
    .end local v9           #data:Ljava/lang/String;
    .end local v12           #json:Lorg/json/JSONObject;
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 126
    :cond_6
    const-string v2, "OTA::GCMRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registration response "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "regID"

    .prologue
    .line 135
    const-string v5, "OTA::GCMRegister"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GCM unregistered - ID="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "do"

    const-string v7, "unregister"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "reg_id"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 142
    .local v1, http:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v5, "https://www.otaupdatecenter.pro/pages/regdevice2.php"

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, req:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 144
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 145
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 146
    const-string v5, "OTA::GCMRegister"

    const-string v6, "unregistration response non-200"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1           #http:Lorg/apache/http/client/HttpClient;
    .end local v3           #req:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
