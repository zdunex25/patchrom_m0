.class Lcom/android/gallery3d/app/TrimVideo$2;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/TrimVideo;
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
    .line 159
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$2;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$2;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #calls: Lcom/android/gallery3d/app/TrimVideo;->setProgress()I
    invoke-static {v1}, Lcom/android/gallery3d/app/TrimVideo;->access$100(Lcom/android/gallery3d/app/TrimVideo;)I

    move-result v0

    .line 163
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$2;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/TrimVideo;->access$300(Lcom/android/gallery3d/app/TrimVideo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimVideo$2;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/gallery3d/app/TrimVideo;->access$200(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0xc8

    rsub-int v3, v3, 0xc8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method
