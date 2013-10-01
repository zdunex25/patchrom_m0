.class public Lcom/android/gallery3d/data/MtpContext;
.super Ljava/lang/Object;
.source "MtpContext.java"

# interfaces
.implements Lcom/android/gallery3d/data/MtpClient$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MtpContext$ScannerClient;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/gallery3d/data/MtpClient;

.field private mContext:Landroid/content/Context;

.field private mScannerClient:Lcom/android/gallery3d/data/MtpContext$ScannerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/gallery3d/data/MtpContext$ScannerClient;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/data/MtpContext$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mScannerClient:Lcom/android/gallery3d/data/MtpContext$ScannerClient;

    .line 72
    new-instance v0, Lcom/android/gallery3d/data/MtpClient;

    iget-object v1, p0, Lcom/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/MtpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mClient:Lcom/android/gallery3d/data/MtpClient;

    .line 73
    return-void
.end method

.method private notifyDirty()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 98
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method


# virtual methods
.method public copyAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .parameter "deviceName"
    .parameter "albumName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, children:Ljava/util/List;,"Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 129
    .local v1, dest:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .end local v1           #dest:Ljava/io/File;
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, success:I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpObjectInfo;

    .line 133
    .local v0, child:Landroid/mtp/MtpObjectInfo;
    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v4, importedFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/data/MtpContext;->mClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v8

    invoke-virtual {v7, p1, v8, v5}, Lcom/android/gallery3d/data/MtpClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    iget-object v7, p0, Lcom/android/gallery3d/data/MtpContext;->mScannerClient:Lcom/android/gallery3d/data/MtpContext$ScannerClient;

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/data/MtpContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 142
    .end local v0           #child:Landroid/mtp/MtpObjectInfo;
    .end local v4           #importedFile:Ljava/io/File;
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public copyFile(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;)Z
    .locals 7
    .parameter "deviceName"
    .parameter "objInfo"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, dest:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "Imported"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .end local v0           #dest:Ljava/io/File;
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 113
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, destPath:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v3

    .line 115
    .local v3, objectId:I
    iget-object v4, p0, Lcom/android/gallery3d/data/MtpContext;->mClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/gallery3d/data/MtpClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/data/MtpContext;->mScannerClient:Lcom/android/gallery3d/data/MtpContext$ScannerClient;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/MtpContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 117
    const/4 v4, 0x1

    .line 123
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #destPath:Ljava/lang/String;
    .end local v3           #objectId:I
    :goto_0
    return v4

    .line 120
    :cond_0
    const-string v4, "MtpContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No space to import "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public deviceAdded(Landroid/mtp/MtpDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/gallery3d/data/MtpContext;->notifyDirty()V

    .line 87
    const v0, 0x7f0a0205

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MtpContext;->showToast(I)V

    .line 88
    return-void
.end method

.method public deviceRemoved(Landroid/mtp/MtpDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/gallery3d/data/MtpContext;->notifyDirty()V

    .line 93
    const v0, 0x7f0a0206

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MtpContext;->showToast(I)V

    .line 94
    return-void
.end method

.method public getMtpClient()Lcom/android/gallery3d/data/MtpClient;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mClient:Lcom/android/gallery3d/data/MtpClient;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MtpClient;->removeListener(Lcom/android/gallery3d/data/MtpClient$Listener;)V

    .line 77
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/MtpContext;->mClient:Lcom/android/gallery3d/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MtpClient;->addListener(Lcom/android/gallery3d/data/MtpClient$Listener;)V

    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/data/MtpContext;->notifyDirty()V

    .line 82
    return-void
.end method
