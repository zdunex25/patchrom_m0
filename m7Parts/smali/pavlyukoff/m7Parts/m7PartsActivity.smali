.class public Lpavlyukoff/m7Parts/m7PartsActivity;
.super Landroid/preference/PreferenceActivity;
.source "m7PartsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private appVersion:Ljava/lang/String;

.field private bHaveRoot:Z

.field private isDebug:Z

.field private romBuild:Ljava/lang/String;

.field private romType:Ljava/lang/String;

.field private romVersion:I

.field private zRamFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getNetName(Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 6
    .parameter "context"
    .parameter "myPrefName"

    .prologue
    .line 364
    const-string v0, ""

    .line 365
    .local v0, StrNetName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " chmod 666 /system/build.prop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 366
    new-instance v3, Lpavlyukoff/m7Parts/PropFile;

    invoke-direct {v3}, Lpavlyukoff/m7Parts/PropFile;-><init>()V

    .line 367
    .local v3, localPropFile:Lpavlyukoff/m7Parts/PropFile;
    const-string v4, "/system/build.prop"

    invoke-virtual {v3, v4}, Lpavlyukoff/m7Parts/PropFile;->load(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    const-string v4, "net.hostname"

    invoke-virtual {v3, v4}, Lpavlyukoff/m7Parts/PropFile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " chmod 644 /system/build.prop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 374
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "getprop net.hostname"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 378
    .local v2, ifc:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 379
    .local v1, bis:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1           #bis:Ljava/io/BufferedReader;
    .end local v2           #ifc:Ljava/lang/Process;
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    return-void

    .line 382
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    if-nez v0, :cond_0

    .line 357
    const-string v0, "unknown"

    .line 359
    :cond_0
    return-object v0

    .line 353
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setNetName(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " chmod 666 /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 391
    new-instance v0, Lpavlyukoff/m7Parts/PropFile;

    invoke-direct {v0}, Lpavlyukoff/m7Parts/PropFile;-><init>()V

    .line 392
    .local v0, localPropFile:Lpavlyukoff/m7Parts/PropFile;
    const-string v1, "/system/build.prop"

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/PropFile;->load(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "net.hostname"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile;->removeByKey(Ljava/lang/String;Z)V

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string v1, "net.hostname"

    invoke-virtual {v0, v1, p0}, Lpavlyukoff/m7Parts/PropFile;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile;->save()Z

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " chmod 644 /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 402
    return-void
.end method


# virtual methods
.method public getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "strInput"

    .prologue
    .line 322
    const-string v0, ""

    .line 323
    .local v0, Res:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v5, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getprop "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 329
    .local v4, p:Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 330
    .local v2, input:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 334
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 342
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Res:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 344
    .restart local v0       #Res:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 332
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #p:Ljava/lang/Process;
    :cond_1
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 336
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 338
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRebootVisible()Z
    .locals 7

    .prologue
    .line 55
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 56
    .local v3, myRes:Landroid/content/res/Resources;
    const/4 v1, 0x1

    .line 57
    .local v1, myBool:Z
    const-string v4, "reboot"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, i:I
    if-nez v0, :cond_0

    .line 60
    const-string v4, "reboot_system"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    .line 68
    const-string v4, "ic_lock_reboot"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 71
    const/4 v1, 0x0

    .line 74
    :cond_1
    if-nez v1, :cond_2

    .line 76
    iget-object v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 77
    .local v2, myEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "m7ShowRebootOpt"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    .end local v2           #myEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return v1
.end method

.method public getRecoveryVisible()Z
    .locals 7

    .prologue
    .line 86
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 87
    .local v3, myRes:Landroid/content/res/Resources;
    const/4 v1, 0x1

    .line 88
    .local v1, myBool:Z
    const-string v4, "recovery"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, i:I
    if-nez v0, :cond_0

    .line 91
    const-string v4, "recovery_system"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 97
    :cond_0
    if-eqz v1, :cond_1

    .line 99
    const-string v4, "ic_lock_recovery"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 100
    if-nez v0, :cond_1

    .line 102
    const/4 v1, 0x0

    .line 105
    :cond_1
    if-nez v1, :cond_2

    .line 107
    iget-object v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 108
    .local v2, myEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "m7ShowRecoveryOpt"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    .end local v2           #myEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return v1
.end method

.method public getRomVersion()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x5

    .line 408
    iput v8, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 412
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 415
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "miui"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 416
    .local v3, resources:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 418
    const-string v5, "ro.miui.ui.version.name"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, sTmp:Ljava/lang/String;
    const-string v5, "v5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 421
    const/4 v5, 0x6

    iput v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #sTmp:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-nez v5, :cond_2

    .line 432
    const-string v5, "ro.modversion"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 433
    .restart local v4       #sTmp:Ljava/lang/String;
    const-string v5, "miui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    const/4 v5, 0x1

    iput v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 437
    :cond_1
    const-string v5, "slim"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    iput v7, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 442
    .end local v4           #sTmp:Ljava/lang/String;
    :cond_2
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-nez v5, :cond_5

    .line 444
    const-string v5, "ro.build.display.id"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 445
    .restart local v4       #sTmp:Ljava/lang/String;
    const-string v5, "aokp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 447
    iput v6, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 454
    :cond_3
    :goto_1
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-nez v5, :cond_4

    .line 456
    const-string v5, "updateme.name"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 457
    const-string v5, "slim"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 459
    iput v7, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 462
    :cond_4
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-nez v5, :cond_5

    .line 464
    const-string v5, "ro.build.version.incremental"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 465
    const-string v5, "besttt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 467
    const/4 v5, 0x7

    iput v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 473
    .end local v4           #sTmp:Ljava/lang/String;
    :cond_5
    iget-boolean v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->isDebug:Z

    if-eqz v5, :cond_6

    iput v10, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 475
    :cond_6
    const-string v5, "ro.build.version.incremental"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 476
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-ne v5, v6, :cond_a

    .line 478
    const-string v5, "ro.build.id"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 508
    :cond_7
    :goto_2
    return-void

    .line 424
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #sTmp:Ljava/lang/String;
    :cond_8
    const/4 v5, 0x2

    :try_start_1
    iput v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 426
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #sTmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput v8, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    goto/16 :goto_0

    .line 450
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #sTmp:Ljava/lang/String;
    :cond_9
    const-string v5, "pa_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 452
    iput v9, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    goto :goto_1

    .line 482
    .end local v4           #sTmp:Ljava/lang/String;
    :cond_a
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-ne v5, v9, :cond_b

    .line 484
    const-string v5, "ro.pa.version"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 485
    iget-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, finded:I
    if-eqz v1, :cond_b

    .line 488
    iget-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 491
    .end local v1           #finded:I
    :cond_b
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    if-ne v5, v7, :cond_c

    .line 493
    const-string v5, "updateme.version"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 494
    iget-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 495
    const-string v5, "slim.ota.version"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 497
    :cond_c
    iget v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 499
    iput v7, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    .line 500
    const-string v5, "ro.build.version.incremental"

    invoke-virtual {p0, v5}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    .line 501
    iget-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    const-string v6, "besttt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 502
    .restart local v1       #finded:I
    if-eqz v1, :cond_7

    .line 504
    iget-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->romBuild:Ljava/lang/String;

    goto :goto_2
.end method

.method public getScreenShotVisible(Z)Z
    .locals 7
    .parameter "isMiui"

    .prologue
    .line 117
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 118
    .local v3, myRes:Landroid/content/res/Resources;
    const/4 v1, 0x1

    .line 119
    .local v1, myBool:Z
    const-string v4, "screenshot"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, i:I
    if-nez v0, :cond_0

    .line 122
    const-string v4, "global_action_screenshot_txt"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 123
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 130
    if-eqz p1, :cond_3

    .line 131
    const-string v4, "ic_menu_gallery"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    :goto_0
    if-nez v0, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 139
    :cond_1
    if-nez v1, :cond_2

    .line 141
    iget-object v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 142
    .local v2, myEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "m7ShowScreenShotOpt"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    .end local v2           #myEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return v1

    .line 133
    :cond_3
    const-string v4, "ic_lock_screenshot"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getZRamSize()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 155
    const-string v0, ""

    .line 157
    .local v0, StrNetName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "cat /sys/block/zram0/disksize"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 158
    .local v2, ifc:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v1, bis:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1           #bis:Ljava/io/BufferedReader;
    .end local v2           #ifc:Ljava/lang/Process;
    :goto_0
    if-nez v0, :cond_1

    .line 165
    iget-boolean v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->isDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "Gettings zRam: null"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 176
    :cond_0
    :goto_1
    return v3

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    iget-boolean v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->isDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "Gettings zRam: empty"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 175
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 176
    .local v3, lSize:I
    goto :goto_1

    .line 161
    .end local v3           #lSize:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isHaveRoot()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->bHaveRoot:Z

    return v0
.end method

.method public nbRefreshButtons()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 514
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->isDebug:Z

    .line 518
    const-string v17, "7oh.zram.filename"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 520
    const-string v17, "/system/etc/init.d/14zram"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    .line 523
    :cond_0
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "Stock"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "MIUI2"

    aput-object v18, v13, v17

    const/16 v17, 0x2

    const-string v18, "MIUI4"

    aput-object v18, v13, v17

    const/16 v17, 0x3

    const-string v18, "AOKP"

    aput-object v18, v13, v17

    const/16 v17, 0x4

    const-string v18, "Paranoid"

    aput-object v18, v13, v17

    const/16 v17, 0x5

    const-string v18, "SlimBean"

    aput-object v18, v13, v17

    const/16 v17, 0x6

    const-string v18, "MIUI5"

    aput-object v18, v13, v17

    .line 524
    .local v13, romVersions:[Ljava/lang/String;
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v12, v0, [I

    fill-array-data v12, :array_0

    .line 525
    .local v12, romLayouts:[I
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v14, v0, [Z

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v14, v17

    .line 526
    .local v14, showReboot:[Z
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v15, v0, [Z

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v15, v17

    .line 527
    .local v15, showRecovery:[Z
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    const/16 v17, 0x3

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 529
    .local v16, showScreenShot:[Z
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getRomVersion()V

    .line 530
    invoke-static/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->appVersion:Ljava/lang/String;

    .line 532
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 550
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 551
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    .line 554
    const/4 v2, 0x1

    .line 555
    .local v2, myBool1:Z
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 556
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getRebootVisible()Z

    move-result v2

    .line 558
    :cond_1
    const/4 v3, 0x1

    .line 559
    .local v3, myBool2:Z
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 560
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getRecoveryVisible()Z

    move-result v3

    .line 562
    :cond_2
    const/4 v4, 0x1

    .line 563
    .local v4, myBool3:Z
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->getScreenShotVisible(Z)Z

    move-result v4

    .line 566
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamUpdate()V

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    aget v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->addPreferencesFromResource(I)V

    .line 572
    invoke-static {}, Lpavlyukoff/m7Parts/C;->haveRoot()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->bHaveRoot:Z

    .line 574
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->isDebug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lpavlyukoff/m7Parts/m7PartsActivity;->bHaveRoot:Z

    .line 577
    :cond_3
    const-string v17, "m7NetworkName"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 578
    .line 580
    .local v10, myPrefName:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    aget-boolean v17, v14, v17

    if-eqz v17, :cond_4

    .line 582
    const-string v17, "m7ShowRebootOpt"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 583
    .local v5, myPref1:Landroid/preference/Preference;
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 586
    .end local v5           #myPref1:Landroid/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    aget-boolean v17, v15, v17

    if-eqz v17, :cond_5

    .line 588
    const-string v17, "m7ShowRecoveryOpt"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 589
    .local v6, myPref2:Landroid/preference/Preference;
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 593
    .end local v6           #myPref2:Landroid/preference/Preference;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    aget-boolean v17, v16, v17

    if-eqz v17, :cond_6

    .line 595
    const-string v17, "m7ShowScreenShotOpt"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 596
    .local v7, myPref3:Landroid/preference/Preference;
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 599
    .end local v7           #myPref3:Landroid/preference/Preference;
    :cond_6
    const-string v17, "lNavBar"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 600
    .local v8, myPref4:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->bHaveRoot:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 603
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 606
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->romVersion:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 608
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lpavlyukoff/m7Parts/m7PartsActivity;->bHaveRoot:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 610
    const-string v17, "lZRam"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 611
    .local v9, myPref5:Landroid/preference/Preference;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 615
    .end local v9           #myPref5:Landroid/preference/Preference;
    :cond_8
    return-void

    .line 537
    .end local v2           #myBool1:Z
    .end local v3           #myBool2:Z
    .end local v4           #myBool3:Z
    .end local v8           #myPref4:Landroid/preference/Preference;
    .end local v10           #myPrefName:Landroid/preference/Preference;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "@miui:style/V5.Theme.Light"

    const-string v19, "theme"

    const-string v20, "miui"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 538
    .local v11, resID:I
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getApplication()Landroid/app/Application;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/app/Application;->setTheme(I)V

    .line 539
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lpavlyukoff/m7Parts/m7PartsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 543
    .end local v11           #resID:I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getApplication()Landroid/app/Application;

    move-result-object v17

    const v18, 0x103000c

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->setTheme(I)V

    .line 544
    const v17, 0x103000c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 563
    .restart local v2       #myBool1:Z
    .restart local v3       #myBool2:Z
    .restart local v4       #myBool3:Z
    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 524
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x4t 0x7ft
        0x3t 0x0t 0x4t 0x7ft
        0x2t 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x5t 0x0t 0x4t 0x7ft
        0x6t 0x0t 0x4t 0x7ft
        0x4t 0x0t 0x4t 0x7ft
    .end array-data

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMeClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 296
    const-string v0, "am start -n com.android.settings/.TestingSettings"

    .line 297
    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 298
    return-void
.end method

.method public onMeClick2(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 302
    const-string v0, "am start -n com.android.settings/.DevelopmentSettings"

    .line 303
    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 304
    return-void
.end method

.method public onNavBarDisableClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " chmod 666 /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 309
    new-instance v0, Lpavlyukoff/m7Parts/PropFile;

    invoke-direct {v0}, Lpavlyukoff/m7Parts/PropFile;-><init>()V

    .line 310
    .local v0, localPropFile:Lpavlyukoff/m7Parts/PropFile;
    const-string v1, "/system/build.prop"

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/PropFile;->load(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const-string v1, "qemu.hw.mainkeys"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile;->removeByKey(Ljava/lang/String;Z)V

    .line 313
    const-string v1, "qemu.hw.mainkeys"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile;->save()Z

    .line 315
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 317
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " chmod 644 /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 318
    return-void
.end method

.method public onNavBarEnableClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " chmod 666 /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 283
    new-instance v0, Lpavlyukoff/m7Parts/PropFile;

    invoke-direct {v0}, Lpavlyukoff/m7Parts/PropFile;-><init>()V

    .line 284
    .local v0, localPropFile:Lpavlyukoff/m7Parts/PropFile;
    const-string v1, "/system/build.prop"

    invoke-virtual {v0, v1}, Lpavlyukoff/m7Parts/PropFile;->load(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "qemu.hw.mainkeys"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile;->removeByKey(Ljava/lang/String;Z)V

    .line 288
    invoke-virtual {v0}, Lpavlyukoff/m7Parts/PropFile;->save()Z

    .line 289
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " chmod 644 /system/build.prop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 292
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 619
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 620
    iget-object v0, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 621
    return-void
.end method

.method public onRebootClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 270
    :try_start_0
    const-string v1, "Trying KillServer"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 271
    const-string v1, "pkill -TERM -f system_server"

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, localException1:Ljava/lang/Exception;
    const-string v1, "Rebooting"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 276
    const-string v1, "reboot"

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 263
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->nbRefreshButtons()V

    .line 264
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 626
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 627
    .local v0, in:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 629
    const-string v4, "zRamSize"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 632
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 633
    .local v1, inSize:I
    if-ltz v1, :cond_0

    .line 636
    invoke-virtual {p0, v1}, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamSet(I)V

    .line 637
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->finish()V

    .line 641
    .end local v1           #inSize:I
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 642
    .local v2, localIterator:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 649
    iget-object v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 650
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 651
    return-void

    .line 644
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 645
    .restart local v3       #str:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 647
    iget-object v4, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v4, v3}, Lpavlyukoff/m7Parts/m7PartsActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .parameter "paramSharedPreferences"
    .parameter "paramString"

    .prologue
    .line 655
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 656
    .local v4, localContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p0, p2}, Lpavlyukoff/m7Parts/m7PartsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 658
    .local v6, localPreference:Landroid/preference/Preference;
    instance-of v9, v6, Landroid/preference/ListPreference;

    if-eqz v9, :cond_1

    move-object v5, v6

    .line 660
    check-cast v5, Landroid/preference/ListPreference;

    .line 661
    .local v5, localListPreference:Landroid/preference/ListPreference;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    :try_start_0
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 665
    .local v2, k:I
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 702
    .end local v2           #k:I
    .end local v5           #localListPreference:Landroid/preference/ListPreference;
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    instance-of v9, v6, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_3

    move-object v3, v6

    .line 674
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 675
    .local v3, localCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 676
    .local v8, str:Ljava/lang/String;
    const/4 v1, 0x0

    .line 677
    .local v1, i:I
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 679
    const/4 v1, 0x1

    .line 683
    :cond_2
    :try_start_1
    invoke-static {v4, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v9

    goto :goto_0

    .line 690
    .end local v1           #i:I
    .end local v3           #localCheckBoxPreference:Landroid/preference/CheckBoxPreference;
    .end local v8           #str:Ljava/lang/String;
    :cond_3
    instance-of v9, v6, Landroid/preference/EditTextPreference;

    if-eqz v9, :cond_0

    move-object v7, v6

    .line 692
    check-cast v7, Landroid/preference/EditTextPreference;

    .line 693
    .local v7, localTextPreference:Landroid/preference/EditTextPreference;
    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 694
    .restart local v8       #str:Ljava/lang/String;
    const-string v9, "m7NetworkName"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 696
    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, StrNetName:Ljava/lang/String;
    invoke-static {v0}, Lpavlyukoff/m7Parts/m7PartsActivity;->setNetName(Ljava/lang/String;)V

    .line 699
    invoke-static {p0, v6}, Lpavlyukoff/m7Parts/m7PartsActivity;->getNetName(Landroid/content/Context;Landroid/preference/Preference;)V

    goto :goto_0

    .line 668
    .end local v0           #StrNetName:Ljava/lang/String;
    .end local v7           #localTextPreference:Landroid/preference/EditTextPreference;
    .end local v8           #str:Ljava/lang/String;
    .restart local v5       #localListPreference:Landroid/preference/ListPreference;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public zRam0()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamSet(I)V

    .line 236
    return-void
.end method

.method public zRamApply(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 240
    iget-object v1, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    const-string v2, "m7ZRamSize"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, lZRamSize:I
    invoke-virtual {p0, v0}, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamSet(I)V

    .line 242
    return-void
.end method

.method public zRamSet(I)V
    .locals 2
    .parameter "lZRamSize"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Applying zRam: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    const-string v0, "/sbin/busybox swapoff /dev/block/zram0"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 221
    const-string v0, "/sbin/busybox umount /dev/block/zram0"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 222
    const-string v0, "/sbin/busybox echo 0 >> /sys/block/zram0/disksize"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 223
    const-string v0, "/sbin/busybox echo 1 >> /sys/block/zram0/reset"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 224
    if-lez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sbin/busybox echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v1, p1, 0x400

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >> /sys/block/zram0/disksize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 227
    const-string v0, "/sbin/busybox echo 1 >> /sys/block/zram0/reset"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 228
    const-string v0, "/sbin/busybox mkswap /dev/block/zram0"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 229
    const-string v0, "/sbin/busybox swapon /dev/block/zram0"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 231
    :cond_0
    return-void
.end method

.method public zRamUpdate()V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/m7PartsActivity;->getZRamSize()I

    move-result v0

    .line 184
    .local v0, lZRamSize:I
    const/high16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 185
    div-int/lit16 v2, v0, 0x400

    div-int/lit16 v0, v2, 0x400

    .line 187
    :cond_0
    if-ltz v0, :cond_2

    .line 189
    iget-boolean v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->isDebug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zRam is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_3

    .line 192
    const/16 v0, 0x80

    .line 210
    :goto_0
    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 211
    .local v1, myEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "m7ZRamSize"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    .end local v1           #myEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 195
    :cond_3
    const/16 v2, 0x60

    if-lt v0, v2, :cond_4

    .line 196
    const/16 v0, 0x60

    goto :goto_0

    .line 199
    :cond_4
    const/16 v2, 0x40

    if-lt v0, v2, :cond_5

    .line 200
    const/16 v0, 0x40

    goto :goto_0

    .line 203
    :cond_5
    const/16 v2, 0x20

    if-lt v0, v2, :cond_6

    .line 204
    const/16 v0, 0x20

    goto :goto_0

    .line 206
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zRamWrite(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 246
    iget-object v1, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->a:Landroid/content/SharedPreferences;

    const-string v2, "m7ZRamSize"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    .local v0, lZRamSize:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing zRam: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox rm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 250
    if-lez v0, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox echo \"#!/sbin/busybox sh\" >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox echo \"#Created by 7Parts by 7OH\" >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox echo \"\" >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox echo \"/sbin/busybox echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v2, v0, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >> /sys/block/zram0/disksize\" >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox echo \"/sbin/busybox mkswap /dev/block/zram0\" >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/busybox echo \"/sbin/busybox swapon /dev/block/zram0\" >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lpavlyukoff/m7Parts/m7PartsActivity;->zRamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 259
    :cond_0
    return-void
.end method
