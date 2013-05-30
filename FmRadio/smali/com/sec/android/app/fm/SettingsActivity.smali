.class public Lcom/sec/android/app/fm/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEFAULT_STORAGE:Ljava/lang/String;


# instance fields
.field private RecordingLocationValue:Ljava/lang/String;

.field private mAf:Landroid/preference/CheckBoxPreference;

.field private mAutoOnOff:Landroid/preference/ListPreference;

.field private mBackKey:Z

.field private mBgPlaying:Landroid/preference/CheckBoxPreference;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRecordingLocation:Landroid/preference/ListPreference;

.field private mStationId:Landroid/preference/CheckBoxPreference;

.field mStorageManager:Landroid/os/storage/StorageManager;

.field mStorageVolume:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/SettingsActivity;->DEFAULT_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->RecordingLocationValue:Ljava/lang/String;

    .line 678
    new-instance v0, Lcom/sec/android/app/fm/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/SettingsActivity$1;-><init>(Lcom/sec/android/app/fm/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->setInitialValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/SettingsActivity;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private getStorageVolumeCount()I
    .locals 9

    .prologue
    .line 639
    const-string v7, "SettingsActivity"

    const-string v8, "getStorageVolumeCount() is called."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v1, 0x0

    .line 642
    .local v1, count:I
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_0

    .line 643
    iget-object v7, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 646
    .local v4, item:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, path:Ljava/lang/String;
    const-string v7, "mounted"

    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 648
    add-int/lit8 v1, v1, 0x1

    .line 645
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v4           #item:Landroid/os/storage/StorageVolume;
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 652
    .local v2, e:Ljava/lang/StackOverflowError;
    const-string v7, "SettingsActivity"

    const-string v8, "java.lang.StackOverflowError"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v1, 0x0

    .line 656
    .end local v2           #e:Ljava/lang/StackOverflowError;
    :cond_2
    return v1
.end method

.method private getStorageVolumeList()[Ljava/lang/String;
    .locals 11

    .prologue
    const v10, 0x7f0a00a9

    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v8, :cond_0

    .line 588
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 591
    .local v4, item:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 592
    .local v6, path:Ljava/lang/String;
    const-string v8, "mounted"

    iget-object v9, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 593
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    .end local v4           #item:Landroid/os/storage/StorageVolume;
    .end local v6           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 598
    .local v7, retValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_5

    .line 599
    if-nez v2, :cond_3

    .line 605
    const v8, 0x7f0a00aa

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 598
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 607
    :cond_3
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 608
    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    goto :goto_2

    .line 610
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    goto :goto_2

    .line 615
    :cond_5
    return-object v7
.end method

.method private getStorageVolumePath(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageVolumePaths()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    if-nez v8, :cond_0

    .line 621
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 624
    .local v4, item:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, path:Ljava/lang/String;
    const-string v8, "mounted"

    iget-object v9, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 626
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    .end local v4           #item:Landroid/os/storage/StorageVolume;
    .end local v6           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 631
    .local v7, retValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 632
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v2

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 635
    :cond_3
    return-object v7
.end method

.method private initRecordingLocation()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 539
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumeList()[Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, recordingLocation:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 542
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "initRecordingLocation :: recordingLocation is null"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 547
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumePaths()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 548
    if-eqz v2, :cond_2

    array-length v4, v2

    if-le v4, v6, :cond_2

    .line 549
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 555
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "storage"

    sget-object v6, Lcom/sec/android/app/fm/SettingsActivity;->DEFAULT_STORAGE:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, strRecordingLocation:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/SettingsActivity;->setRecordingLocation(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 558
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumePath(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, defaultStr:Ljava/lang/String;
    const-string v4, "storage"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 552
    .end local v0           #defaultStr:Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #strRecordingLocation:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 660
    if-eqz p1, :cond_1

    .line 661
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 662
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private setAutoOnOffSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method private setInitialValues()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageVolume:[Landroid/os/storage/StorageVolume;

    .line 148
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->initRecordingLocation()V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "backgroudplaying"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStationId:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "stationid"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    if-nez v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAf:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "af"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "autoonoff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, ivalue:I
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private setRecordingLocation(Ljava/lang/String;)Z
    .locals 5
    .parameter "strValue"

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumeCount()I

    move-result v0

    .line 566
    .local v0, length:I
    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 567
    .local v2, value:I
    const/4 v1, 0x1

    .line 568
    .local v1, ret:Z
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-lt v2, v0, :cond_1

    .line 569
    :cond_0
    const/4 v2, 0x0

    .line 570
    const/4 v1, 0x0

    .line 572
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 573
    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->addPreferencesFromResource(I)V

    .line 97
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "af"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "stationid"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 106
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/SettingsActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, mode:I
    const-string v1, "SettingsPreference"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 113
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    .line 117
    const-string v1, "backgroudplaying"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    if-nez v1, :cond_2

    .line 125
    const-string v1, "stationid"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStationId:Landroid/preference/CheckBoxPreference;

    .line 127
    :cond_2
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    if-nez v1, :cond_3

    .line 128
    const-string v1, "af"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAf:Landroid/preference/CheckBoxPreference;

    .line 130
    :cond_3
    const-string v1, "autoonoff"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->setInitialValues()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/SettingsActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 452
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 424
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 427
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 433
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 435
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->finish()V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 301
    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, key:Ljava/lang/String;
    const-string v3, "backgroudplaying"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 316
    .local v2, value:Z
    const-string v3, "backgroudplaying"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    .end local v2           #value:Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    const/4 v3, 0x0

    return v3

    .line 317
    .restart local p2
    :cond_1
    const-string v3, "stationid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 319
    .restart local v2       #value:Z
    const-string v3, "stationid"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_0

    .line 323
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v3, p0}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_0

    .line 325
    .end local v2           #value:Z
    .restart local p2
    :cond_2
    const-string v3, "af"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 327
    .restart local v2       #value:Z
    const-string v3, "af"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_0

    .line 331
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 381
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "my resume setting-------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->refreshLayout()V

    .line 384
    iput-boolean v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 385
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "autoonoff"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, ivalue:I
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 387
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 390
    .local v0, autoOnOffdialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 392
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 403
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v9, 0x0

    .line 459
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 460
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "autoonoff"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 461
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 464
    .local v3, index:I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this is the index its coming .."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    const-string v6, "autoonoff"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 466
    invoke-direct {p0, v5}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 467
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    :try_start_0
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-nez v6, :cond_1

    .line 531
    .end local v3           #index:I
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 472
    .restart local v3       #index:I
    .restart local v5       #value:Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v6, :cond_0

    .line 476
    if-nez v3, :cond_3

    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v6, :cond_2

    .line 478
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 480
    :cond_2
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v7, 0x7f0a0060

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x7f0a002e

    invoke-virtual {p0, v10}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 481
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_3
    :goto_1
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v6, :cond_0

    .line 492
    sget-object v6, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v6, p0}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 487
    :catch_1
    move-exception v6

    goto :goto_1

    .line 494
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v3           #index:I
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    const-string v6, "storage"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRecordingLocation:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, strValue:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this is the index its coming .."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    iget-object v6, p0, Lcom/sec/android/app/fm/SettingsActivity;->RecordingLocationValue:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 500
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "RecordingLocationValue is same as mRecordingLocation.getValue()"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_5
    iput-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->RecordingLocationValue:Ljava/lang/String;

    .line 508
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/SettingsActivity;->setRecordingLocation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 509
    const-string v6, "storage"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 511
    :cond_6
    invoke-direct {p0, v9}, Lcom/sec/android/app/fm/SettingsActivity;->getStorageVolumePath(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, defaultStr:Ljava/lang/String;
    const-string v6, "storage"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    if-nez v0, :cond_1

    .line 411
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 416
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 417
    return-void
.end method

.method public refreshLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 535
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 536
    return-void
.end method
