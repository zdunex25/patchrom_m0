.class Lcom/android/camera/PhotoModule$ImageSaver;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PhotoModule$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1157
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->start()V

    .line 1158
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 10
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p7

    move-object v6, p1

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z

    move-result v9

    .line 1253
    .local v9, ok:Z
    if-eqz v9, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1256
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 1163
    new-instance v0, Lcom/android/camera/PhotoModule$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/PhotoModule$SaveRequest;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 1164
    .local v0, r:Lcom/android/camera/PhotoModule$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    .line 1165
    iput-object p2, v0, Lcom/android/camera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    .line 1166
    iput-object p3, v0, Lcom/android/camera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    .line 1167
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    .line 1168
    iput p5, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    .line 1169
    iput p6, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    .line 1170
    iput p7, v0, Lcom/android/camera/PhotoModule$SaveRequest;->orientation:I

    .line 1171
    monitor-enter p0

    .line 1172
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1174
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1175
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1167
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1179
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1181
    monitor-exit p0

    .line 1182
    return-void

    .line 1181
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->waitDone()V

    .line 1237
    monitor-enter p0

    .line 1238
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mStop:Z

    .line 1239
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1246
    :goto_0
    return-void

    .line 1240
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 1189
    :goto_0
    monitor-enter p0

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1195
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    return-void

    .line 1198
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1202
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1204
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/PhotoModule$SaveRequest;

    .line 1205
    .local v9, r:Lcom/android/camera/PhotoModule$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1206
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mUltraPixel:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6100(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    const-string v0, "CAM_PhotoModule"

    const-string v1, "mUltraPixel = Resizing image."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, v9, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    iget v1, v9, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    iget v2, v9, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1209
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget v0, v9, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, v9, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1210
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {v8, v0, v1}, Lcom/android/camera/Util;->makeJpeg(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    .line 1212
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, v9, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    iget-object v2, v9, Lcom/android/camera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v9, Lcom/android/camera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/camera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v9, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    iget v6, v9, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    iget v7, v9, Lcom/android/camera/PhotoModule$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/PhotoModule$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V

    .line 1214
    monitor-enter p0

    .line 1215
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1217
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1199
    .end local v9           #r:Lcom/android/camera/PhotoModule$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1223
    monitor-enter p0

    .line 1224
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1231
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1232
    return-void

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
