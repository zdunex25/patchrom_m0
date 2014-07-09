.class public Lcom/cyanogenmod/settings/device/Hspa;
.super Landroid/preference/ListPreference;
.source "Hspa.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/cyanogenmod/settings/device/Hspa;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/Hspa;->mCtx:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 40
    const-string v0, "/system/app/SamsungServiceMode.apk"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    invoke-static {}, Lcom/cyanogenmod/settings/device/Hspa;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "hspa"

    const-string v2, "23"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cyanogenmod/settings/device/Hspa;->sendIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cyanogenmod.SamsungServiceMode.EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, i:Landroid/content/Intent;
    const-string v1, "sub_type"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/Hspa;->mCtx:Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lcom/cyanogenmod/settings/device/Hspa;->sendIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
