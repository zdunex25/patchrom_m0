.class Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;
.super Ljava/lang/Object;
.source "MainDSPScreen.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 23
    const-string v7, "ViPER4Android"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Update key = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v7, "viper4android.headphonefx.fireq"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 27
    invoke-interface {p1, p2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, newValue:Ljava/lang/String;
    const-string v7, "custom"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 31
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string v7, "viper4android.headphonefx.fireq.custom"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v9, "viper4android.headphonefx.fireq.custom"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/vipercn/viper4android_v2/preference/EqualizerPreference;

    .line 34
    .local v3, eq:Lcom/vipercn/viper4android_v2/preference/EqualizerPreference;
    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/preference/EqualizerPreference;->refreshFromPreference()V

    .line 38
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    .end local v3           #eq:Lcom/vipercn/viper4android_v2/preference/EqualizerPreference;
    .end local v5           #newValue:Ljava/lang/String;
    :cond_0
    const-string v7, "viper4android.headphonefx.fireq.custom"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 40
    invoke-interface {p1, p2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .restart local v5       #newValue:Ljava/lang/String;
    const-string v0, "custom"

    .line 42
    .local v0, desiredValue:Ljava/lang/String;
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v9, "viper4android.headphonefx.fireq"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;

    .line 43
    .local v6, preset:Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;
    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-lt v7, v10, :cond_3

    .line 51
    :goto_1
    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    .restart local v1       #e:Landroid/content/SharedPreferences$Editor;
    const-string v7, "viper4android.headphonefx.fireq"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;->refreshFromPreference()V

    .line 60
    .end local v0           #desiredValue:Ljava/lang/String;
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    .end local v5           #newValue:Ljava/lang/String;
    .end local v6           #preset:Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;
    :cond_1
    const-string v7, "viper4android.global.forceenable.enable"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v4, mResult:Landroid/app/AlertDialog$Builder;
    const-string v7, "ViPER4Android"

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 68
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060098

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 73
    .end local v4           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v7, p0, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;

    invoke-virtual {v7}, Lcom/vipercn/viper4android_v2/activity/MainDSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.vipercn.viper4android_v2.UPDATE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void

    .line 43
    .restart local v0       #desiredValue:Ljava/lang/String;
    .restart local v5       #newValue:Ljava/lang/String;
    .restart local v6       #preset:Lcom/vipercn/viper4android_v2/preference/SummariedListPreference;
    :cond_3
    aget-object v2, v9, v7

    .line 45
    .local v2, entry:Ljava/lang/CharSequence;
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 47
    move-object v0, v5

    .line 48
    goto :goto_1

    .line 43
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
