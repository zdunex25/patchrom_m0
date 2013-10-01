.class Lcom/android/gallery3d/app/SlideshowPage$2;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SlideshowPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$2;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$2;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowPage;->access$100(Lcom/android/gallery3d/app/SlideshowPage;)V

    .line 137
    :goto_0
    return-void

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$2;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowPage;->access$200(Lcom/android/gallery3d/app/SlideshowPage;)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
