.class Lcom/vipercn/viper4android/activity/MainDSPScreen$1;
.super Ljava/lang/Object;
.source "MainDSPScreen.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/activity/MainDSPScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/MainDSPScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 22
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 31
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Update key = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v18, "viper4android.headphonefx.fireq"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 35
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, newValue:Ljava/lang/String;
    const-string v18, "custom"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 38
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 39
    .local v4, e:Landroid/content/SharedPreferences$Editor;
    const-string v18, "viper4android.headphonefx.fireq.custom"

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "viper4android.headphonefx.fireq.custom"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/vipercn/viper4android/preference/EqualizerPreference;

    .line 42
    .local v6, eq:Lcom/vipercn/viper4android/preference/EqualizerPreference;
    invoke-virtual {v6}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->refreshFromPreference()V

    .line 46
    .end local v4           #e:Landroid/content/SharedPreferences$Editor;
    .end local v6           #eq:Lcom/vipercn/viper4android/preference/EqualizerPreference;
    .end local v8           #newValue:Ljava/lang/String;
    :cond_0
    const-string v18, "viper4android.headphonefx.fireq.custom"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 48
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .restart local v8       #newValue:Ljava/lang/String;
    const-string v3, "custom"

    .line 50
    .local v3, desiredValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "viper4android.headphonefx.fireq"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/vipercn/viper4android/preference/SummariedListPreference;

    .line 51
    .local v9, preset:Lcom/vipercn/viper4android/preference/SummariedListPreference;
    invoke-virtual {v9}, Lcom/vipercn/viper4android/preference/SummariedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 59
    :goto_1
    invoke-virtual {v9}, Lcom/vipercn/viper4android/preference/SummariedListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 61
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 62
    .restart local v4       #e:Landroid/content/SharedPreferences$Editor;
    const-string v18, "viper4android.headphonefx.fireq"

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-virtual {v9}, Lcom/vipercn/viper4android/preference/SummariedListPreference;->refreshFromPreference()V

    .line 68
    .end local v3           #desiredValue:Ljava/lang/String;
    .end local v4           #e:Landroid/content/SharedPreferences$Editor;
    .end local v8           #newValue:Ljava/lang/String;
    .end local v9           #preset:Lcom/vipercn/viper4android/preference/SummariedListPreference;
    :cond_1
    const-string v18, "viper4android.headphonefx.convolver.kernel"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->access$0(Lcom/vipercn/viper4android/activity/MainDSPScreen;)Landroid/content/Context;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 72
    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, szSrcIRFile:Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    if-eq v15, v0, :cond_5

    .line 75
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\""

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 77
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "IR sample = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .local v7, iAndroidVersion:I
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "System version: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v13, "/data/v4a_conv.irs"

    .line 82
    .local v13, szDstFile:Ljava/lang/String;
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Copy ir sample to "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v18, "com.vipercn.viper4android.settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->access$0(Lcom/vipercn/viper4android/activity/MainDSPScreen;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 85
    .local v17, szToolbox:Ljava/lang/String;
    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 87
    const-string v18, "com.vipercn.viper4android.settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->access$0(Lcom/vipercn/viper4android/activity/MainDSPScreen;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v15, v13}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, szCopy:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " chmod"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, szChmod:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " sync"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, szSync:Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    .line 91
    .local v11, szCmdLine:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v12, v11, v18

    .line 92
    const/16 v18, 0x1

    aput-object v16, v11, v18

    .line 93
    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " 777 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v11, v18

    .line 94
    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 115
    .end local v7           #iAndroidVersion:I
    .end local v10           #szChmod:Ljava/lang/String;
    .end local v11           #szCmdLine:[Ljava/lang/String;
    .end local v12           #szCopy:Ljava/lang/String;
    .end local v13           #szDstFile:Ljava/lang/String;
    .end local v15           #szSrcIRFile:Ljava/lang/String;
    .end local v16           #szSync:Ljava/lang/String;
    .end local v17           #szToolbox:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.vipercn.viper4android.UPDATE"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void

    .line 51
    .restart local v3       #desiredValue:Ljava/lang/String;
    .restart local v8       #newValue:Ljava/lang/String;
    .restart local v9       #preset:Lcom/vipercn/viper4android/preference/SummariedListPreference;
    :cond_3
    aget-object v5, v19, v18

    .line 53
    .local v5, entry:Ljava/lang/CharSequence;
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 55
    move-object v3, v8

    .line 56
    goto/16 :goto_1

    .line 51
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 99
    .end local v3           #desiredValue:Ljava/lang/String;
    .end local v5           #entry:Ljava/lang/CharSequence;
    .end local v8           #newValue:Ljava/lang/String;
    .end local v9           #preset:Lcom/vipercn/viper4android/preference/SummariedListPreference;
    .restart local v15       #szSrcIRFile:Ljava/lang/String;
    :cond_5
    const-string v18, "ViPER4Android"

    const-string v19, "Remove /data/v4a_conv.irs"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v13, "/data/v4a_conv.irs"

    .line 101
    .restart local v13       #szDstFile:Ljava/lang/String;
    const-string v18, "com.vipercn.viper4android.settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/MainDSPScreen$1;->this$0:Lcom/vipercn/viper4android/activity/MainDSPScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/vipercn/viper4android/activity/MainDSPScreen;->mParentContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->access$0(Lcom/vipercn/viper4android/activity/MainDSPScreen;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 102
    .restart local v17       #szToolbox:Ljava/lang/String;
    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 104
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " rm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, szRemove:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " sync"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 106
    .restart local v16       #szSync:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    .line 107
    .restart local v11       #szCmdLine:[Ljava/lang/String;
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v11, v18

    .line 108
    const/16 v18, 0x1

    aput-object v16, v11, v18

    .line 109
    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method
