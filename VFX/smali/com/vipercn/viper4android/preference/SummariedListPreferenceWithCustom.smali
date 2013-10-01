.class public Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;
.super Landroid/preference/ListPreference;
.source "SummariedListPreferenceWithCustom.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "set"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 12
    .parameter "builder"

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 32
    const-string v8, "ViPER4Android"

    const-string v9, "External storage not mounted"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setEntries([Ljava/lang/CharSequence;)V

    .line 34
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060079

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, szTip:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/ViPER4Android/Kernel/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 38
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 87
    .end local v7           #szTip:Ljava/lang/String;
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/ViPER4Android/Kernel/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, szKernelPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, mKnlFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 47
    const-string v8, "ViPER4Android"

    const-string v9, "Kernel directory does not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 53
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v6, szKnlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, ".irs"

    invoke-static {v2, v8, v6}, Lcom/vipercn/viper4android/activity/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    const-string v8, ".wav"

    invoke-static {v2, v8, v6}, Lcom/vipercn/viper4android/activity/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060079

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 60
    .restart local v7       #szTip:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/ViPER4Android/Kernel/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 65
    .end local v7           #szTip:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 66
    .local v4, szKnlArray:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 67
    .local v5, szKnlArrayVal:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 73
    invoke-virtual {p0, v4}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setEntries([Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 76
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    .end local v1           #i:I
    .end local v2           #mKnlFile:Ljava/io/File;
    .end local v3           #szKernelPath:Ljava/lang/String;
    .end local v4           #szKnlArray:[Ljava/lang/String;
    .end local v5           #szKnlArrayVal:[Ljava/lang/String;
    .end local v6           #szKnlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setEntries([Ljava/lang/CharSequence;)V

    .line 81
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060079

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    .restart local v7       #szTip:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/ViPER4Android/Kernel/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 85
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    goto/16 :goto_0

    .line 51
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

    .line 63
    .restart local v6       #szKnlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2

    .line 69
    .restart local v1       #i:I
    .restart local v4       #szKnlArray:[Ljava/lang/String;
    .restart local v5       #szKnlArrayVal:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v1

    .line 70
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

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method public refreshFromPreference()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 137
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 98
    .local v2, entryValues:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-nez v2, :cond_5

    .line 100
    :cond_0
    if-nez p1, :cond_2

    .line 102
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 105
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #entryValues:[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #entryValues:[Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 112
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    .end local v3           #fileName:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 121
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 123
    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android/preference/SummariedListPreferenceWithCustom;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
