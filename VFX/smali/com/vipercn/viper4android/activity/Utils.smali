.class public Lcom/vipercn/viper4android/activity/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ViPER4Android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AcquireRoot()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 485
    sput-boolean v1, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 486
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 488
    goto :goto_0
.end method

.method public static CheckProfileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "szProfileName"
    .parameter "szProfileDir"

    .prologue
    .line 198
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, fProfileDirHandle:Ljava/io/File;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v6, szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ".prf"

    invoke-static {v2, v7, v6}, Lcom/vipercn/viper4android/activity/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, bFoundProfile:Z
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 218
    .end local v0           #bFoundProfile:Z
    .end local v2           #fProfileDirHandle:Ljava/io/File;
    .end local v3           #idx:I
    .end local v6           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return v0

    .line 205
    .restart local v0       #bFoundProfile:Z
    .restart local v2       #fProfileDirHandle:Ljava/io/File;
    .restart local v3       #idx:I
    .restart local v6       #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, szFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/Utils;->GetProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, szName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    const/4 v0, 0x1

    .line 210
    goto :goto_1

    .line 203
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v0           #bFoundProfile:Z
    .end local v2           #fProfileDirHandle:Ljava/io/File;
    .end local v3           #idx:I
    .end local v4           #szFileName:Ljava/lang/String;
    .end local v5           #szName:Ljava/lang/String;
    .end local v6           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static CheckSignal(Ljava/lang/String;)Z
    .locals 3
    .parameter "szSignal"

    .prologue
    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, szDestFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "ctx"
    .parameter "szSourceName"
    .parameter "szDstName"

    .prologue
    const/4 v9, 0x0

    .line 887
    invoke-static {p0}, Lcom/vipercn/viper4android/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 888
    .local v7, szBasePath:Ljava/lang/String;
    const-string v10, ""

    if-ne v7, v10, :cond_0

    .line 916
    :goto_0
    return v9

    .line 889
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 891
    const/4 v2, 0x0

    .line 892
    .local v2, myInput:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 893
    .local v3, myOutput:Ljava/io/OutputStream;
    move-object v6, p2

    .line 896
    .local v6, outFileName:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 897
    .local v1, hfOutput:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 899
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 900
    .end local v3           #myOutput:Ljava/io/OutputStream;
    .local v4, myOutput:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 901
    const/16 v10, 0x400

    new-array v8, v10, [B

    .line 902
    .local v8, tBuffer:[B
    const/4 v5, 0x0

    .line 903
    .local v5, nLength:I
    :goto_1
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_2

    .line 905
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 906
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 907
    const/4 v2, 0x0

    .line 908
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 909
    const/4 v3, 0x0

    .line 916
    .end local v4           #myOutput:Ljava/io/OutputStream;
    .restart local v3       #myOutput:Ljava/io/OutputStream;
    const/4 v9, 0x1

    goto :goto_0

    .line 904
    .end local v3           #myOutput:Ljava/io/OutputStream;
    .restart local v4       #myOutput:Ljava/io/OutputStream;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 911
    .end local v5           #nLength:I
    .end local v8           #tBuffer:[B
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 913
    .end local v1           #hfOutput:Ljava/io/File;
    .end local v4           #myOutput:Ljava/io/OutputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #myOutput:Ljava/io/OutputStream;
    :goto_2
    goto :goto_0

    .line 911
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static CreateSignal(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9
    .parameter "szSignal"
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    const/4 v6, 0x0

    .line 617
    invoke-static {p1, p2}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, szToolbox:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 631
    :goto_0
    return v6

    .line 620
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " touch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, szTouch:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " chmod"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, szChmod:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " sync"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, szSync:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/data/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, szDestFile:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    .line 626
    .local v1, szCommand:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 627
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 628
    const/4 v6, 0x2

    aput-object v3, v1, v6

    .line 629
    const/16 v6, 0x64

    invoke-static {v1, v6}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 631
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public static DeleteSignal(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9
    .parameter "szSignal"
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 637
    invoke-static {p1, p2}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, szToolbox:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 652
    :cond_0
    :goto_0
    return v5

    .line 640
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " rm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, szRemove:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " sync"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, szSync:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/data/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, szDestFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 646
    :cond_2
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    .line 647
    .local v0, szCommand:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 648
    aput-object v3, v0, v6

    .line 649
    const/16 v7, 0x64

    invoke-static {v0, v7}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 651
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    .line 652
    goto :goto_0
.end method

.method public static DownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "szURL"
    .parameter "szFileName"
    .parameter "szStorePath"

    .prologue
    const/4 v7, 0x0

    .line 62
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v5, myURL:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 64
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 65
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 66
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    if-gtz v8, :cond_1

    .line 83
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #myURL:Ljava/net/URL;
    :cond_0
    :goto_0
    return v7

    .line 67
    .restart local v1       #conn:Ljava/net/URLConnection;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #myURL:Ljava/net/URL;
    :cond_1
    if-eqz v4, :cond_0

    .line 68
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 73
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 74
    .local v6, numread:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 77
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 79
    const/4 v7, 0x1

    goto :goto_0

    .line 75
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    .end local v0           #buf:[B
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #myURL:Ljava/net/URL;
    .end local v6           #numread:I
    :catch_0
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static FileChecksum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "szFilePathName"
    .parameter "szChecksum"

    .prologue
    const/4 v8, 0x0

    .line 90
    const-wide/16 v4, 0x0

    .line 94
    .local v4, lChecksum:J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, fis:Ljava/io/FileInputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 98
    .local v0, buf:[B
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 99
    .local v6, numread:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    .line 103
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, szNewChecksum:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    .line 110
    .end local v0           #buf:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v6           #numread:I
    .end local v7           #szNewChecksum:Ljava/lang/String;
    :cond_1
    :goto_0
    return v8

    .line 100
    .restart local v0       #buf:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v6       #numread:I
    :cond_2
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 101
    aget-byte v9, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v9, v9

    add-long/2addr v4, v9

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    .end local v0           #buf:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #idx:I
    .end local v6           #numread:I
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static GetBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 878
    .local v0, cont:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, szBasePath:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ""

    .line 881
    .end local v1           #szBasePath:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static GetFileLength(Ljava/lang/String;)J
    .locals 3
    .parameter "szFileName"

    .prologue
    .line 49
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 53
    :goto_0
    return-wide v1

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static GetProfileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "szProfileDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, fProfileDirHandle:Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ".prf"

    invoke-static {v1, v7, v5}, Lcom/vipercn/viper4android/activity/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v6, szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 189
    .end local v1           #fProfileDirHandle:Ljava/io/File;
    .end local v2           #idx:I
    .end local v5           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v6

    .line 180
    .restart local v1       #fProfileDirHandle:Ljava/io/File;
    .restart local v2       #idx:I
    .restart local v5       #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, szFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/Utils;->GetProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, szName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1           #fProfileDirHandle:Ljava/io/File;
    .end local v2           #idx:I
    .end local v3           #szFileName:Ljava/lang/String;
    .end local v4           #szName:Ljava/lang/String;
    .end local v5           #szProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #szProfileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public static GetProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "szProfileFileName"

    .prologue
    .line 138
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, fisInput:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 140
    .local v3, isrInput:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .local v0, brInput:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 144
    .local v6, szProfileName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, szLine:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 156
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 157
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 164
    .end local v0           #brInput:Ljava/io/BufferedReader;
    .end local v2           #fisInput:Ljava/io/FileInputStream;
    .end local v3           #isrInput:Ljava/io/InputStreamReader;
    .end local v5           #szLine:Ljava/lang/String;
    .end local v6           #szProfileName:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 146
    .restart local v0       #brInput:Ljava/io/BufferedReader;
    .restart local v2       #fisInput:Ljava/io/FileInputStream;
    .restart local v3       #isrInput:Ljava/io/InputStreamReader;
    .restart local v5       #szLine:Ljava/lang/String;
    .restart local v6       #szProfileName:Ljava/lang/String;
    :cond_1
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, szChunks:[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 150
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "profile_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    const/4 v7, 0x1

    aget-object v6, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0           #brInput:Ljava/io/BufferedReader;
    .end local v2           #fisInput:Ljava/io/FileInputStream;
    .end local v3           #isrInput:Ljava/io/InputStreamReader;
    .end local v4           #szChunks:[Ljava/lang/String;
    .end local v5           #szLine:Ljava/lang/String;
    .end local v6           #szProfileName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_1
.end method

.method public static GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 582
    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 583
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    const-string v1, ""

    .line 588
    :cond_0
    :goto_0
    return-object v1

    .line 584
    :cond_1
    const-string v2, "viper4android.settings.toolbox"

    const-string v3, "none"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, szToolbox:Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 586
    :cond_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, ""

    goto :goto_0

    .line 587
    :cond_3
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0
.end method

.method public static GetToolbox(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "szName"

    .prologue
    .line 496
    :try_start_0
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Searching toolbox "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/bin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found /system/bin/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/bin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/xbin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found /system/xbin/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/xbin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/bin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found /bin/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/bin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 512
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/xbin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found /xbin/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/xbin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 517
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 519
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found /sbin/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sbin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 524
    :cond_4
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Toolbox "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    const-string v1, ""

    goto/16 :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ViPER4Android_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public static InstallDrv_FX(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 20
    .parameter "szPreferenceName"
    .parameter "ctx"
    .parameter "szDriverName"

    .prologue
    .line 930
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mounted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 931
    const/16 v17, 0x0

    .line 1053
    :goto_0
    return v17

    .line 934
    :cond_0
    const-string v17, "libv4a_fx_ics.so"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/vipercn/viper4android/activity/Utils;->CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 935
    const/16 v17, 0x0

    goto :goto_0

    .line 937
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 938
    .local v15, szToolbox:Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    goto :goto_0

    .line 941
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " mount"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 942
    .local v10, szMount:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " rm"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 943
    .local v11, szRemove:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " chmod"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 944
    .local v7, szChmod:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " sync"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 946
    .local v13, szSync:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/v4a_audio_system.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 947
    .local v14, szSystemConf:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/v4a_audio_vendor.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 949
    .local v16, szVendorConf:Ljava/lang/String;
    const/4 v4, 0x0

    .line 950
    .local v4, bExistsVendor:Z
    const-string v17, "/system/vendor/etc/audio_effects.conf"

    invoke-static/range {v17 .. v17}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 951
    const/4 v4, 0x1

    .line 954
    :cond_3
    if-eqz v4, :cond_5

    .line 956
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 957
    .local v8, szCopyConfToSD:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 958
    const/16 v17, 0x1

    const-string v18, "/system/vendor/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 959
    const/16 v17, 0x2

    aput-object v13, v8, v17

    .line 960
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 971
    :goto_1
    const/4 v5, 0x1

    .line 972
    .local v5, bModifyResult:Z
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".out"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/vipercn/viper4android/activity/Utils;->ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    and-int v5, v5, v17

    .line 973
    if-eqz v4, :cond_4

    .line 974
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".out"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vipercn/viper4android/activity/Utils;->ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    and-int v5, v5, v17

    .line 975
    :cond_4
    if-nez v5, :cond_7

    .line 977
    if-eqz v4, :cond_6

    .line 979
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 980
    .local v12, szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 981
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 982
    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 983
    const/16 v17, 0x3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 984
    const/16 v17, 0x4

    aput-object v13, v12, v17

    .line 985
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 995
    :goto_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 964
    .end local v5           #bModifyResult:Z
    .end local v8           #szCopyConfToSD:[Ljava/lang/String;
    .end local v12           #szRemoveTmpFiles:[Ljava/lang/String;
    :cond_5
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 965
    .restart local v8       #szCopyConfToSD:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 966
    const/16 v17, 0x1

    aput-object v13, v8, v17

    .line 967
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 989
    .restart local v5       #bModifyResult:Z
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 990
    .restart local v12       #szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 991
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 992
    const/16 v17, 0x2

    aput-object v13, v12, v17

    .line 993
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto :goto_2

    .line 999
    .end local v12           #szRemoveTmpFiles:[Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_8

    .line 1001
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "libv4a_fx_ics.so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1002
    .local v6, szBaseDrvPathName:Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 1003
    .local v9, szCopyToSystem:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,rw /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1004
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1005
    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/system/vendor/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1006
    const/16 v17, 0x3

    const-string v18, "/system/lib/soundfx/libv4a_fx_ics.so"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1007
    const/16 v17, 0x4

    aput-object v13, v9, v17

    .line 1008
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/etc/audio_effects.conf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1009
    const/16 v17, 0x6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/vendor/etc/audio_effects.conf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1010
    const/16 v17, 0x7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1011
    const/16 v17, 0x8

    aput-object v13, v9, v17

    .line 1012
    const/16 v17, 0x9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,ro /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1013
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 1031
    :goto_3
    if-eqz v4, :cond_9

    .line 1033
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 1034
    .restart local v12       #szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1035
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1036
    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1037
    const/16 v17, 0x3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1038
    const/16 v17, 0x4

    aput-object v13, v12, v17

    .line 1039
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 1051
    :goto_4
    const-string v17, "/system/lib/soundfx/libv4a_fx_ics.so"

    invoke-static/range {v17 .. v17}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 1052
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1017
    .end local v6           #szBaseDrvPathName:Ljava/lang/String;
    .end local v9           #szCopyToSystem:[Ljava/lang/String;
    .end local v12           #szRemoveTmpFiles:[Ljava/lang/String;
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "libv4a_fx_ics.so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1018
    .restart local v6       #szBaseDrvPathName:Ljava/lang/String;
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 1019
    .restart local v9       #szCopyToSystem:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,rw /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1020
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1021
    const/16 v17, 0x2

    const-string v18, "/system/lib/soundfx/libv4a_fx_ics.so"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1022
    const/16 v17, 0x3

    aput-object v13, v9, v17

    .line 1023
    const/16 v17, 0x4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/etc/audio_effects.conf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1024
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1025
    const/16 v17, 0x6

    aput-object v13, v9, v17

    .line 1026
    const/16 v17, 0x7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,ro /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1027
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1043
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 1044
    .restart local v12       #szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1045
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1046
    const/16 v17, 0x2

    aput-object v13, v12, v17

    .line 1047
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 1053
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public static InstallDrv_XHiFi(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 20
    .parameter "szPreferenceName"
    .parameter "ctx"
    .parameter "szDriverName"

    .prologue
    .line 1059
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mounted"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1060
    const/16 v17, 0x0

    .line 1182
    :goto_0
    return v17

    .line 1063
    :cond_0
    const-string v17, "libv4a_xhifi_ics.so"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/vipercn/viper4android/activity/Utils;->CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1064
    const/16 v17, 0x0

    goto :goto_0

    .line 1066
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1067
    .local v15, szToolbox:Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    goto :goto_0

    .line 1070
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " mount"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1071
    .local v10, szMount:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " rm"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1072
    .local v11, szRemove:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " chmod"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1073
    .local v7, szChmod:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " sync"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1075
    .local v13, szSync:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/v4a_audio_system.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1076
    .local v14, szSystemConf:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/v4a_audio_vendor.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1078
    .local v16, szVendorConf:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1079
    .local v4, bExistsVendor:Z
    const-string v17, "/system/vendor/etc/audio_effects.conf"

    invoke-static/range {v17 .. v17}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1080
    const/4 v4, 0x1

    .line 1083
    :cond_3
    if-eqz v4, :cond_5

    .line 1085
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 1086
    .local v8, szCopyConfToSD:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 1087
    const/16 v17, 0x1

    const-string v18, "/system/vendor/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 1088
    const/16 v17, 0x2

    aput-object v13, v8, v17

    .line 1089
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 1100
    :goto_1
    const/4 v5, 0x1

    .line 1101
    .local v5, bModifyResult:Z
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".out"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/vipercn/viper4android/activity/Utils;->ModifyXHiFiConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    and-int v5, v5, v17

    .line 1102
    if-eqz v4, :cond_4

    .line 1103
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ".out"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vipercn/viper4android/activity/Utils;->ModifyXHiFiConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    and-int v5, v5, v17

    .line 1104
    :cond_4
    if-nez v5, :cond_7

    .line 1106
    if-eqz v4, :cond_6

    .line 1108
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 1109
    .local v12, szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1110
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1111
    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1112
    const/16 v17, 0x3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1113
    const/16 v17, 0x4

    aput-object v13, v12, v17

    .line 1114
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 1124
    :goto_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1093
    .end local v5           #bModifyResult:Z
    .end local v8           #szCopyConfToSD:[Ljava/lang/String;
    .end local v12           #szRemoveTmpFiles:[Ljava/lang/String;
    :cond_5
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 1094
    .restart local v8       #szCopyConfToSD:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 1095
    const/16 v17, 0x1

    aput-object v13, v8, v17

    .line 1096
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1118
    .restart local v5       #bModifyResult:Z
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 1119
    .restart local v12       #szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1120
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1121
    const/16 v17, 0x2

    aput-object v13, v12, v17

    .line 1122
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto :goto_2

    .line 1128
    .end local v12           #szRemoveTmpFiles:[Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_8

    .line 1130
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "libv4a_xhifi_ics.so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1131
    .local v6, szBaseDrvPathName:Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 1132
    .local v9, szCopyToSystem:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,rw /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1133
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1134
    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/system/vendor/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1135
    const/16 v17, 0x3

    const-string v18, "/system/lib/soundfx/libv4a_xhifi_ics.so"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1136
    const/16 v17, 0x4

    aput-object v13, v9, v17

    .line 1137
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/etc/audio_effects.conf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1138
    const/16 v17, 0x6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/vendor/etc/audio_effects.conf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1139
    const/16 v17, 0x7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/lib/soundfx/libv4a_xhifi_ics.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1140
    const/16 v17, 0x8

    aput-object v13, v9, v17

    .line 1141
    const/16 v17, 0x9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,ro /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1142
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 1160
    :goto_3
    if-eqz v4, :cond_9

    .line 1162
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 1163
    .restart local v12       #szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1164
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1165
    const/16 v17, 0x2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1166
    const/16 v17, 0x3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1167
    const/16 v17, 0x4

    aput-object v13, v12, v17

    .line 1168
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 1180
    :goto_4
    const-string v17, "/system/lib/soundfx/libv4a_xhifi_ics.so"

    invoke-static/range {v17 .. v17}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 1181
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1146
    .end local v6           #szBaseDrvPathName:Ljava/lang/String;
    .end local v9           #szCopyToSystem:[Ljava/lang/String;
    .end local v12           #szRemoveTmpFiles:[Ljava/lang/String;
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "libv4a_xhifi_ics.so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1147
    .restart local v6       #szBaseDrvPathName:Ljava/lang/String;
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 1148
    .restart local v9       #szCopyToSystem:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,rw /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1149
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/system/etc/audio_effects.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1150
    const/16 v17, 0x2

    const-string v18, "/system/lib/soundfx/libv4a_xhifi_ics.so"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Lcom/vipercn/viper4android/activity/Utils;->MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1151
    const/16 v17, 0x3

    aput-object v13, v9, v17

    .line 1152
    const/16 v17, 0x4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/etc/audio_effects.conf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1153
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " 644 /system/lib/soundfx/libv4a_xhifi_ics.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1154
    const/16 v17, 0x6

    aput-object v13, v9, v17

    .line 1155
    const/16 v17, 0x7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " -o remount,ro /system /system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    .line 1156
    const/16 v17, 0xc8

    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1172
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 1173
    .restart local v12       #szRemoveTmpFiles:[Ljava/lang/String;
    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1174
    const/16 v17, 0x1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".out"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v17

    .line 1175
    const/16 v17, 0x2

    aput-object v13, v12, v17

    .line 1176
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 1182
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public static LoadProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 21
    .parameter "szProfileName"
    .parameter "szProfileDir"
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 227
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v6, fProfileDirHandle:Ljava/io/File;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v16, szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, ".prf"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/vipercn/viper4android/activity/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 230
    const-string v17, ""

    .line 231
    .local v17, szProfileFileName:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    .line 241
    :goto_1
    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    .line 283
    .end local v6           #fProfileDirHandle:Ljava/io/File;
    .end local v8           #idx:I
    .end local v16           #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #szProfileFileName:Ljava/lang/String;
    :goto_2
    return v19

    .line 233
    .restart local v6       #fProfileDirHandle:Ljava/io/File;
    .restart local v8       #idx:I
    .restart local v16       #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #szProfileFileName:Ljava/lang/String;
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, szFileName:Ljava/lang/String;
    invoke-static {v12}, Lcom/vipercn/viper4android/activity/Utils;->GetProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 235
    .local v14, szName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 237
    move-object/from16 v17, v12

    .line 238
    goto :goto_1

    .line 231
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 243
    .end local v12           #szFileName:Ljava/lang/String;
    .end local v14           #szName:Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 244
    .local v10, preferences:Landroid/content/SharedPreferences;
    if-eqz v10, :cond_6

    .line 246
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 247
    .local v7, fisInput:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v9, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 248
    .local v9, isrInput:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    .local v4, brInput:Ljava/io/BufferedReader;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 252
    .local v5, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 253
    .local v13, szLine:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 272
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 274
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 275
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 277
    const/16 v19, 0x1

    goto :goto_2

    .line 254
    :cond_4
    const-string v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 256
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, szChunks:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 258
    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "boolean"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 260
    const/16 v19, 0x0

    aget-object v15, v11, v19

    .line 261
    .local v15, szParameter:Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 262
    .local v3, bValue:Z
    invoke-interface {v5, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 281
    .end local v3           #bValue:Z
    .end local v4           #brInput:Ljava/io/BufferedReader;
    .end local v5           #e:Landroid/content/SharedPreferences$Editor;
    .end local v6           #fProfileDirHandle:Ljava/io/File;
    .end local v7           #fisInput:Ljava/io/FileInputStream;
    .end local v8           #idx:I
    .end local v9           #isrInput:Ljava/io/InputStreamReader;
    .end local v10           #preferences:Landroid/content/SharedPreferences;
    .end local v11           #szChunks:[Ljava/lang/String;
    .end local v13           #szLine:Ljava/lang/String;
    .end local v15           #szParameter:Ljava/lang/String;
    .end local v16           #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #szProfileFileName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 283
    .local v5, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 264
    .restart local v4       #brInput:Ljava/io/BufferedReader;
    .local v5, e:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #fProfileDirHandle:Ljava/io/File;
    .restart local v7       #fisInput:Ljava/io/FileInputStream;
    .restart local v8       #idx:I
    .restart local v9       #isrInput:Ljava/io/InputStreamReader;
    .restart local v10       #preferences:Landroid/content/SharedPreferences;
    .restart local v11       #szChunks:[Ljava/lang/String;
    .restart local v13       #szLine:Ljava/lang/String;
    .restart local v16       #szProfileFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #szProfileFileName:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "string"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 266
    const/16 v19, 0x0

    aget-object v15, v11, v19

    .line 267
    .restart local v15       #szParameter:Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v18, v11, v19

    .line 268
    .local v18, szValue:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v5, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 279
    .end local v4           #brInput:Ljava/io/BufferedReader;
    .end local v5           #e:Landroid/content/SharedPreferences$Editor;
    .end local v7           #fisInput:Ljava/io/FileInputStream;
    .end local v9           #isrInput:Ljava/io/InputStreamReader;
    .end local v11           #szChunks:[Ljava/lang/String;
    .end local v13           #szLine:Ljava/lang/String;
    .end local v15           #szParameter:Ljava/lang/String;
    .end local v18           #szValue:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public static MakeCopyCmdLine(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "szPreferenceName"
    .parameter "ctx"
    .parameter "szSrcFile"
    .parameter "szDstFile"

    .prologue
    .line 594
    invoke-static {p0, p1}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, szToolbox:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 611
    :goto_0
    return-object v3

    .line 597
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 598
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 599
    :cond_1
    const-string v3, "viper4android.settings.copycmd"

    const-string v4, "dd"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, szCopy:Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v3, ""

    goto :goto_0

    .line 601
    :cond_2
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    goto :goto_0

    .line 603
    :cond_3
    const-string v3, "dd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " dd if="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 607
    :cond_4
    const-string v3, "cp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 611
    :cond_5
    const-string v3, ""

    goto :goto_0
.end method

.method public static MakeCopyCmdLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "szDD"
    .parameter "szCopy"
    .parameter "szSource"
    .parameter "szDest"

    .prologue
    .line 922
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " if="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ModifyFXConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "szInputFile"
    .parameter "szOutputFile"

    .prologue
    .line 665
    const-string v11, "ViPER4Android_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Editing audio configuration, input = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", output = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :try_start_0
    invoke-static {p0}, Lcom/vipercn/viper4android/activity/Utils;->GetFileLength(Ljava/lang/String;)J

    move-result-wide v7

    .line 670
    .local v7, lInputFileLength:J
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 671
    .local v4, fisInput:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 672
    .local v5, fosOutput:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v11, "ASCII"

    invoke-direct {v6, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 673
    .local v6, isrInput:Ljava/io/InputStreamReader;
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v11, "ASCII"

    invoke-direct {v9, v5, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 674
    .local v9, oswOutput:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 675
    .local v1, brInput:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 677
    .local v2, bwOutput:Ljava/io/BufferedWriter;
    const/4 v0, 0x0

    .line 678
    .local v0, bConfigModified:Z
    long-to-int v11, v7

    invoke-virtual {v1, v11}, Ljava/io/BufferedReader;->mark(I)V

    .line 681
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, szLine:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 691
    :goto_0
    if-eqz v0, :cond_3

    .line 693
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 696
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 697
    if-nez v10, :cond_2

    .line 700
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 702
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 703
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 704
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 705
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 707
    const/4 v11, 0x1

    .line 746
    .end local v0           #bConfigModified:Z
    .end local v1           #brInput:Ljava/io/BufferedReader;
    .end local v2           #bwOutput:Ljava/io/BufferedWriter;
    .end local v4           #fisInput:Ljava/io/FileInputStream;
    .end local v5           #fosOutput:Ljava/io/FileOutputStream;
    .end local v6           #isrInput:Ljava/io/InputStreamReader;
    .end local v7           #lInputFileLength:J
    .end local v9           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v10           #szLine:Ljava/lang/String;
    :goto_2
    return v11

    .line 683
    .restart local v0       #bConfigModified:Z
    .restart local v1       #brInput:Ljava/io/BufferedReader;
    .restart local v2       #bwOutput:Ljava/io/BufferedWriter;
    .restart local v4       #fisInput:Ljava/io/FileInputStream;
    .restart local v5       #fosOutput:Ljava/io/FileOutputStream;
    .restart local v6       #isrInput:Ljava/io/InputStreamReader;
    .restart local v7       #lInputFileLength:J
    .restart local v9       #oswOutput:Ljava/io/OutputStreamWriter;
    .restart local v10       #szLine:Ljava/lang/String;
    :cond_1
    const-string v11, "41d3c987-e6cf-11e3-a88a-11aba5d5c51b"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 685
    const-string v11, "ViPER4Android_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Source file has been modified, line = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v0, 0x1

    goto :goto_0

    .line 698
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 743
    .end local v0           #bConfigModified:Z
    .end local v1           #brInput:Ljava/io/BufferedReader;
    .end local v2           #bwOutput:Ljava/io/BufferedWriter;
    .end local v4           #fisInput:Ljava/io/FileInputStream;
    .end local v5           #fosOutput:Ljava/io/FileOutputStream;
    .end local v6           #isrInput:Ljava/io/InputStreamReader;
    .end local v7           #lInputFileLength:J
    .end local v9           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v10           #szLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 745
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "ViPER4Android_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v11, 0x0

    goto :goto_2

    .line 711
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bConfigModified:Z
    .restart local v1       #brInput:Ljava/io/BufferedReader;
    .restart local v2       #bwOutput:Ljava/io/BufferedWriter;
    .restart local v4       #fisInput:Ljava/io/FileInputStream;
    .restart local v5       #fosOutput:Ljava/io/FileOutputStream;
    .restart local v6       #isrInput:Ljava/io/InputStreamReader;
    .restart local v7       #lInputFileLength:J
    .restart local v9       #oswOutput:Ljava/io/OutputStreamWriter;
    .restart local v10       #szLine:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 714
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 715
    if-nez v10, :cond_4

    .line 733
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 735
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 737
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 738
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 740
    const/4 v11, 0x1

    goto :goto_2

    .line 716
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "libraries {"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 718
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 719
    const-string v11, "  v4a_fx {\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 720
    const-string v11, "    path /system/lib/soundfx/libv4a_fx_ics.so\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 721
    const-string v11, "  }\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 723
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "effects {"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 725
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 726
    const-string v11, "  v4a_standard_fx {\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 727
    const-string v11, "    library v4a_fx\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 728
    const-string v11, "    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 729
    const-string v11, "  }\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 731
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static ModifyXHiFiConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "szInputFile"
    .parameter "szOutputFile"

    .prologue
    .line 753
    const-string v11, "ViPER4Android_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Editing audio configuration, input = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", output = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :try_start_0
    invoke-static {p0}, Lcom/vipercn/viper4android/activity/Utils;->GetFileLength(Ljava/lang/String;)J

    move-result-wide v7

    .line 758
    .local v7, lInputFileLength:J
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 759
    .local v4, fisInput:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 760
    .local v5, fosOutput:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v11, "ASCII"

    invoke-direct {v6, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 761
    .local v6, isrInput:Ljava/io/InputStreamReader;
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v11, "ASCII"

    invoke-direct {v9, v5, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 762
    .local v9, oswOutput:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 763
    .local v1, brInput:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 765
    .local v2, bwOutput:Ljava/io/BufferedWriter;
    const/4 v0, 0x0

    .line 766
    .local v0, bConfigModified:Z
    long-to-int v11, v7

    invoke-virtual {v1, v11}, Ljava/io/BufferedReader;->mark(I)V

    .line 769
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 770
    .local v10, szLine:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 779
    :goto_0
    if-eqz v0, :cond_3

    .line 781
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 784
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 785
    if-nez v10, :cond_2

    .line 788
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 790
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 791
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 792
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 793
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 795
    const/4 v11, 0x1

    .line 834
    .end local v0           #bConfigModified:Z
    .end local v1           #brInput:Ljava/io/BufferedReader;
    .end local v2           #bwOutput:Ljava/io/BufferedWriter;
    .end local v4           #fisInput:Ljava/io/FileInputStream;
    .end local v5           #fosOutput:Ljava/io/FileOutputStream;
    .end local v6           #isrInput:Ljava/io/InputStreamReader;
    .end local v7           #lInputFileLength:J
    .end local v9           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v10           #szLine:Ljava/lang/String;
    :goto_2
    return v11

    .line 771
    .restart local v0       #bConfigModified:Z
    .restart local v1       #brInput:Ljava/io/BufferedReader;
    .restart local v2       #bwOutput:Ljava/io/BufferedWriter;
    .restart local v4       #fisInput:Ljava/io/FileInputStream;
    .restart local v5       #fosOutput:Ljava/io/FileOutputStream;
    .restart local v6       #isrInput:Ljava/io/InputStreamReader;
    .restart local v7       #lInputFileLength:J
    .restart local v9       #oswOutput:Ljava/io/OutputStreamWriter;
    .restart local v10       #szLine:Ljava/lang/String;
    :cond_1
    const-string v11, "d92c3a90-3e26-11e2-a25f-0800200c9a66"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 773
    const-string v11, "ViPER4Android_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Source file has been modified, line = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x1

    goto :goto_0

    .line 786
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 831
    .end local v0           #bConfigModified:Z
    .end local v1           #brInput:Ljava/io/BufferedReader;
    .end local v2           #bwOutput:Ljava/io/BufferedWriter;
    .end local v4           #fisInput:Ljava/io/FileInputStream;
    .end local v5           #fosOutput:Ljava/io/FileOutputStream;
    .end local v6           #isrInput:Ljava/io/InputStreamReader;
    .end local v7           #lInputFileLength:J
    .end local v9           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v10           #szLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 833
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "ViPER4Android_Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v11, 0x0

    goto :goto_2

    .line 799
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bConfigModified:Z
    .restart local v1       #brInput:Ljava/io/BufferedReader;
    .restart local v2       #bwOutput:Ljava/io/BufferedWriter;
    .restart local v4       #fisInput:Ljava/io/FileInputStream;
    .restart local v5       #fosOutput:Ljava/io/FileOutputStream;
    .restart local v6       #isrInput:Ljava/io/InputStreamReader;
    .restart local v7       #lInputFileLength:J
    .restart local v9       #oswOutput:Ljava/io/OutputStreamWriter;
    .restart local v10       #szLine:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 802
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 803
    if-nez v10, :cond_4

    .line 821
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 823
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 824
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 825
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 826
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 828
    const/4 v11, 0x1

    goto :goto_2

    .line 804
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "libraries {"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 806
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 807
    const-string v11, "  v4a_xhifi {\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 808
    const-string v11, "    path /system/lib/soundfx/libv4a_xhifi_ics.so\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 809
    const-string v11, "  }\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 811
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "effects {"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 813
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 814
    const-string v11, "  v4a_standard_xhifi {\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 815
    const-string v11, "    library v4a_xhifi\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 816
    const-string v11, "    uuid d92c3a90-3e26-11e2-a25f-0800200c9a66\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 817
    const-string v11, "  }\n"

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 819
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static PerformToolboxTest(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "szToolbox"
    .parameter "bUseCopyCmd"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 538
    invoke-static {p0}, Lcom/vipercn/viper4android/activity/Utils;->GetToolbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, szToolboxPath:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v6

    .line 540
    :cond_1
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 542
    const-string v8, "ViPER4Android_Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Performing toolbox test, toolbox = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 545
    .local v0, rndMachine:Ljava/util/Random;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "test_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".rnd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, szTestFilename:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/system/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, szSysTestFilename:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/data/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, szDataTestFilename:Ljava/lang/String;
    const/4 v8, 0x7

    new-array v1, v8, [Ljava/lang/String;

    .line 550
    .local v1, szCommandList:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " mount -o remount,rw /system /system"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v6

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " echo test > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 552
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " sync"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 554
    if-eqz p1, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " cp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 557
    :goto_1
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " rm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 558
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " sync"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 559
    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " mount -o remount,ro /system /system"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 560
    const/16 v8, 0xc8

    invoke-static {v1, v8}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    .line 562
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 564
    const-string v7, "ViPER4Android_Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Toolbox \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" test failed, remove function failure."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 555
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " dd if="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " of="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    goto/16 :goto_1

    .line 567
    :cond_3
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 569
    const-string v7, "ViPER4Android_Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Toolbox \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" test failed, mount or echo or cp function failure."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 573
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " rm "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand(Ljava/lang/String;)Z

    .line 574
    const-string v6, "ViPER4Android_Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Toolbox \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" test succeed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 576
    goto/16 :goto_0
.end method

.method public static SaveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter "szProfileName"
    .parameter "szProfileDir"
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 292
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p3, p2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 293
    .local v4, preferences:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".prf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, szOutFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 298
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, fosOutput:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v3, v2, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 300
    .local v3, oswOutput:Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 302
    .local v0, bwOutput:Ljava/io/BufferedWriter;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd   hh:mm:ss"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 303
    .local v5, sDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, szDate:Ljava/lang/String;
    const-string v9, "# ViPER4Android audio effect profile !\n"

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "# Created "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 307
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "profile_name="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 309
    const-string v8, ""

    .line 312
    .local v8, szValue:Ljava/lang/String;
    const-string v9, "viper4android.headphonefx.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 314
    const-string v9, "viper4android.speakerfx.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 315
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.speakerfx.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 316
    const-string v9, "viper4android.headphonefx.playbackgain.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 318
    const-string v9, "viper4android.headphonefx.fireq.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fireq.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 320
    const-string v9, "viper4android.headphonefx.convolver.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 321
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.convolver.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 322
    const-string v9, "viper4android.headphonefx.colorfulmusic.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 323
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.colorfulmusic.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 324
    const-string v9, "viper4android.headphonefx.diffsurr.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 325
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.diffsurr.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 326
    const-string v9, "viper4android.headphonefx.vhs.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.vhs.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 328
    const-string v9, "viper4android.headphonefx.reverb.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 330
    const-string v9, "viper4android.headphonefx.dynamicsystem.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 331
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 332
    const-string v9, "viper4android.headphonefx.dynamicsystem.tube"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.tube=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 334
    const-string v9, "viper4android.headphonefx.fidelity.bass.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 336
    const-string v9, "viper4android.headphonefx.fidelity.clarity.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.clarity.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 338
    const-string v9, "viper4android.headphonefx.cure.enable"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.cure.enable=boolean="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 342
    const-string v9, "viper4android.headphonefx.playbackgain.ratio"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.ratio=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 344
    const-string v9, "viper4android.headphonefx.playbackgain.maxscaler"

    const-string v10, "400"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.maxscaler=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 346
    const-string v9, "viper4android.headphonefx.playbackgain.volume"

    const-string v10, "80"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.playbackgain.volume=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 348
    const-string v9, "viper4android.headphonefx.fireq"

    const-string v10, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 349
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fireq=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 350
    const-string v9, "viper4android.headphonefx.fireq.custom"

    const-string v10, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fireq.custom=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 352
    const-string v9, "viper4android.headphonefx.convolver.kernel"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 353
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.convolver.kernel=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 354
    const-string v9, "viper4android.headphonefx.colorfulmusic.coeffs"

    const-string v10, "120;200"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 355
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.colorfulmusic.coeffs=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 356
    const-string v9, "viper4android.headphonefx.colorfulmusic.midimage"

    const-string v10, "150"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 357
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.colorfulmusic.midimage=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 358
    const-string v9, "viper4android.headphonefx.diffsurr.delay"

    const-string v10, "500"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.diffsurr.delay=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 360
    const-string v9, "viper4android.headphonefx.vhs.qual"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 361
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.vhs.qual=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 362
    const-string v9, "viper4android.headphonefx.reverb.roomsize"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 363
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.roomsize=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 364
    const-string v9, "viper4android.headphonefx.reverb.roomwidth"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.roomwidth=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 366
    const-string v9, "viper4android.headphonefx.reverb.damp"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 367
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.damp=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 368
    const-string v9, "viper4android.headphonefx.reverb.wet"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.wet=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 370
    const-string v9, "viper4android.headphonefx.reverb.dry"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 371
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.reverb.dry=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 372
    const-string v9, "viper4android.headphonefx.dynamicsystem.coeffs"

    const-string v10, "100;5600;40;80;50;50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.coeffs=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 374
    const-string v9, "viper4android.headphonefx.dynamicsystem.bass"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.dynamicsystem.bass=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 376
    const-string v9, "viper4android.headphonefx.fidelity.bass.mode"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 377
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.mode=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 378
    const-string v9, "viper4android.headphonefx.fidelity.bass.freq"

    const-string v10, "40"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.freq=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 380
    const-string v9, "viper4android.headphonefx.fidelity.bass.gain"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.bass.gain=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 382
    const-string v9, "viper4android.headphonefx.fidelity.clarity.mode"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 383
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.clarity.mode=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 384
    const-string v9, "viper4android.headphonefx.fidelity.clarity.gain"

    const-string v10, "50"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.fidelity.clarity.gain=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 386
    const-string v9, "viper4android.headphonefx.cure.crossfeed"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.cure.crossfeed=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 388
    const-string v9, "viper4android.headphonefx.outvol"

    const-string v10, "100"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.outvol=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 390
    const-string v9, "viper4android.headphonefx.channelpan"

    const-string v10, "0"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 391
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.channelpan=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 392
    const-string v9, "viper4android.headphonefx.limiter"

    const-string v10, "100"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 393
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.headphonefx.limiter=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 394
    const-string v9, "viper4android.speakerfx.limiter"

    const-string v10, "100"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "viper4android.speakerfx.limiter=string="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 398
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 399
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 400
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0           #bwOutput:Ljava/io/BufferedWriter;
    .end local v2           #fosOutput:Ljava/io/FileOutputStream;
    .end local v3           #oswOutput:Ljava/io/OutputStreamWriter;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #sDateFormat:Ljava/text/SimpleDateFormat;
    .end local v6           #szDate:Ljava/lang/String;
    .end local v7           #szOutFileName:Ljava/lang/String;
    .end local v8           #szValue:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static UninstallDrv_FX(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 841
    invoke-static {p0, p1}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 842
    .local v4, szToolbox:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    :goto_0
    return-void

    .line 844
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " mount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, szMount:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " rm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, szRemove:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, szSync:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    .line 849
    .local v0, szCmdLine:[Ljava/lang/String;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " -o remount,rw /system /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 850
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " /system/lib/soundfx/libv4a_fx_ics.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 851
    const/4 v5, 0x2

    aput-object v3, v0, v5

    .line 852
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " -o remount,ro /system /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 853
    const/16 v5, 0xc8

    invoke-static {v0, v5}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public static UninstallDrv_XHiFi(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "szPreferenceName"
    .parameter "ctx"

    .prologue
    .line 859
    invoke-static {p0, p1}, Lcom/vipercn/viper4android/activity/Utils;->GetSavedToolbox(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 860
    .local v4, szToolbox:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 872
    :goto_0
    return-void

    .line 862
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " mount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, szMount:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " rm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, szRemove:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, szSync:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    .line 867
    .local v0, szCmdLine:[Ljava/lang/String;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " -o remount,rw /system /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 868
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " /system/lib/soundfx/libv4a_xhifi_ics.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 869
    const/4 v5, 0x2

    aput-object v3, v0, v5

    .line 870
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " -o remount,ro /system /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 871
    const/16 v5, 0xc8

    invoke-static {v0, v5}, Lcom/vipercn/viper4android/activity/Utils;->runRootCommand([Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 35
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 36
    .local v0, bExist:Z
    if-nez v0, :cond_0

    .line 38
    const/4 v1, 0x1

    sput-boolean v1, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 39
    invoke-static {p0}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method public static getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "path"
    .parameter "fileExt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 120
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 131
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 122
    aget-object v4, v2, v3

    invoke-static {v4, p1, p2}, Lcom/vipercn/viper4android/activity/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, filePath:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static runRootCommand(Ljava/lang/String;)Z
    .locals 7
    .parameter "szCommand"

    .prologue
    const/4 v4, 0x0

    .line 412
    const/4 v3, 0x0

    .line 413
    .local v3, mProcess:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 416
    .local v1, mOutStream:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 417
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1           #mOutStream:Ljava/io/DataOutputStream;
    .local v2, mOutStream:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 420
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 421
    const-string v5, "exit\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 423
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 433
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 434
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 441
    :cond_1
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v1       #mOutStream:Ljava/io/DataOutputStream;
    :cond_2
    :goto_0
    return v4

    .line 425
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 434
    :cond_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 436
    :catch_1
    move-exception v0

    .line 438
    goto :goto_0

    .line 430
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 433
    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 434
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 440
    :cond_5
    throw v5

    .line 436
    :catch_2
    move-exception v0

    .line 438
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_0

    .line 436
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    move-object v1, v2

    .line 438
    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v1       #mOutStream:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 430
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v1       #mOutStream:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 425
    .end local v1           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v1       #mOutStream:Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static runRootCommand([Ljava/lang/String;I)Z
    .locals 8
    .parameter "szCommand"
    .parameter "nSleepTime"

    .prologue
    const/4 v5, 0x0

    .line 447
    const/4 v4, 0x0

    .line 448
    .local v4, mProcess:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 451
    .local v2, mOutStream:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 452
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .local v3, mOutStream:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    array-length v6, p0

    if-lt v1, v6, :cond_3

    .line 459
    const-string v6, "exit\n"

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 461
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 471
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 472
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 479
    :cond_1
    const/4 v5, 0x1

    move-object v2, v3

    .end local v1           #i:I
    .end local v3           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return v5

    .line 455
    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v1       #i:I
    .restart local v3       #mOutStream:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, p0, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 457
    int-to-long v6, p1

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1           #i:I
    .end local v3           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 472
    :cond_4
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 474
    :catch_1
    move-exception v0

    .line 476
    goto :goto_1

    .line 468
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 471
    :goto_3
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 472
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 478
    :cond_6
    throw v6

    .line 474
    :catch_2
    move-exception v0

    .line 476
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_1

    .line 474
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v1       #i:I
    .restart local v3       #mOutStream:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    move-object v2, v3

    .line 476
    .end local v3           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    goto :goto_1

    .line 468
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v3       #mOutStream:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 463
    .end local v2           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v3       #mOutStream:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #mOutStream:Ljava/io/DataOutputStream;
    .restart local v2       #mOutStream:Ljava/io/DataOutputStream;
    goto :goto_2
.end method
