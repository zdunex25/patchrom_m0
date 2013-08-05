.class public final Lcom/vipercn/viper4android/activity/MainDSPScreen;
.super Landroid/preference/PreferenceFragment;
.source "MainDSPScreen.java"


# instance fields
.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mParentContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;-><init>(Lcom/vipercn/viper4android/activity/MainDSPScreen;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/activity/MainDSPScreen;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, config:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.vipercn.viper4android."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 129
    :try_start_0
    const-class v3, Lcom/vipercn/viper4android/R$xml;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 130
    .local v2, xmlId:I
    invoke-virtual {p0, v2}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->addPreferencesFromResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 138
    return-void

    .line 132
    .end local v2           #xmlId:I
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 144
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    return-void
.end method

.method public setParentContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mCtx"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;

    .line 24
    return-void
.end method
