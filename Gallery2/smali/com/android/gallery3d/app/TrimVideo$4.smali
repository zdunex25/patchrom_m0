.class Lcom/android/gallery3d/app/TrimVideo$4;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo;->trimVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimVideo;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mSrcFile:Ljava/io/File;
    invoke-static {v1}, Lcom/android/gallery3d/app/TrimVideo;->access$400(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;
    invoke-static {v2}, Lcom/android/gallery3d/app/TrimVideo;->access$500(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mTrimStartTime:I
    invoke-static {v3}, Lcom/android/gallery3d/app/TrimVideo;->access$600(Lcom/android/gallery3d/app/TrimVideo;)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mTrimEndTime:I
    invoke-static {v4}, Lcom/android/gallery3d/app/TrimVideo;->access$700(Lcom/android/gallery3d/app/TrimVideo;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/app/TrimVideoUtils;->startTrim(Ljava/io/File;Ljava/io/File;II)V

    .line 299
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;
    invoke-static {v2}, Lcom/android/gallery3d/app/TrimVideo;->access$500(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;

    move-result-object v2

    #calls: Lcom/android/gallery3d/app/TrimVideo;->insertContent(Ljava/io/File;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/TrimVideo;->access$800(Lcom/android/gallery3d/app/TrimVideo;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/TrimVideo;->access$300(Lcom/android/gallery3d/app/TrimVideo;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/TrimVideo$4$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/TrimVideo$4$1;-><init>(Lcom/android/gallery3d/app/TrimVideo$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
