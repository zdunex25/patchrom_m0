.class Lcom/android/gallery3d/app/ManageCachePage$2;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ManageCachePage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ManageCachePage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/gallery3d/app/ManageCachePage$2;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$2;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #calls: Lcom/android/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/ManageCachePage;->access$700(Lcom/android/gallery3d/app/ManageCachePage;)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$2;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/ManageCachePage;->mLayoutReady:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/ManageCachePage;->access$002(Lcom/android/gallery3d/app/ManageCachePage;Z)Z

    .line 209
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ManageCachePage$2;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$2;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v0}, Lcom/android/gallery3d/app/ManageCachePage;->access$800(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
