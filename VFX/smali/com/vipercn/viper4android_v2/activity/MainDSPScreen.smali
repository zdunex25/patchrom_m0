.class public final Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;
.super Landroid/preference/PreferenceFragment;
.source "MainDSPScreen.java"


# instance fields
.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 18
    new-instance v0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;-><init>(Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;)V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, config:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 84
    .local v3, prefSettings:Landroid/content/SharedPreferences;
    const-string v5, "viper4android.settings.uiprefer"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, nControlLevel:I
    if-ltz v2, :cond_0

    const/4 v5, 0x2

    if-le v2, v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.vipercn.viper4android_v2."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 90
    :try_start_0
    const-class v5, Lcom/vipercn/viper4android_v2/R$xml;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_preferences_l"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 91
    .local v4, xmlId:I
    invoke-virtual {p0, v4}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->addPreferencesFromResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 99
    return-void

    .line 93
    .end local v4           #xmlId:I
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 105
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 106
    return-void
.end method
