.class public Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;
.super Landroid/preference/ListPreference;
.source "SummariedListPreferenceWithCustom.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "set"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 14
    .parameter "builder"

    .prologue
    const v13, 0x7f060080

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 33
    const-string v8, "ViPER4Android"

    const-string v9, "External storage not mounted"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setEntries([Ljava/lang/CharSequence;)V

    .line 35
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060080

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, szTip:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AKernelPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 39
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 88
    .end local v7           #szTip:Ljava/lang/String;
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AKernelPath()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, szKernelPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, mKnlFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 48
    const-string v8, "ViPER4Android"

    const-string v9, "Kernel directory does not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 54
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v6, szKnlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, ".irs"

    invoke-static {v2, v8, v6}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    const-string v8, ".wav"

    invoke-static {v2, v8, v6}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 58
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060080

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 61
    .restart local v7       #szTip:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AKernelPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 66
    .end local v7           #szTip:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 67
    .local v4, szKnlArray:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 68
    .local v5, szKnlArrayVal:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 74
    invoke-virtual {p0, v4}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setEntries([Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 77
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1           #i:I
    .end local v2           #mKnlFile:Ljava/io/File;
    .end local v3           #szKernelPath:Ljava/lang/String;
    .end local v4           #szKnlArray:[Ljava/lang/String;
    .end local v5           #szKnlArrayVal:[Ljava/lang/String;
    .end local v6           #szKnlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    new-array v8, v11, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    new-array v8, v11, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 84
    .restart local v7       #szTip:Ljava/lang/String;
    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->GetV4AKernelPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    goto/16 :goto_0

    .line 52
    .end local v0           #e:Ljava/lang/Exception;
    .end local v7           #szTip:Ljava/lang/String;
    .restart local v2       #mKnlFile:Ljava/io/File;
    .restart local v3       #szKernelPath:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v8, "ViPER4Android"

    const-string v9, "Kernel directory exists"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 64
    .restart local v6       #szKnlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2

    .line 70
    .restart local v1       #i:I
    .restart local v4       #szKnlArray:[Ljava/lang/String;
    .restart local v5       #szKnlArrayVal:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v1

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public refreshFromPreference()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 98
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    .local v2, entryValues:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-nez v2, :cond_5

    .line 101
    :cond_0
    if-nez p1, :cond_2

    .line 103
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 106
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #entryValues:[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #entryValues:[Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    .end local v3           #fileName:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 122
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 124
    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
