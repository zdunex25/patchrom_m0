.class public Lcom/android/OriginalSettings/wifi/IwlanNetwork;
.super Landroid/preference/Preference;
.source "IwlanNetwork.java"


# instance fields
.field private defaultPdgDomainName:Ljava/lang/String;

.field private isConnected:Z

.field private pdgAddress:Ljava/lang/String;

.field private pdgDomainName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "jsonObject"
    .parameter "isConnected"
    .parameter "defaultPdgDomainName"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    :try_start_0
    iput-boolean p3, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->isConnected:Z

    .line 27
    const-string v1, "pdg_name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "pdg_name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgDomainName:Ljava/lang/String;

    .line 30
    :cond_0
    const-string v1, "pdg_ipaddr"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const-string v1, "pdg_ipaddr"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->defaultPdgDomainName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090c58

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090c5b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getDefaultPdgDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->defaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->isConnected:Z

    return v0
.end method
