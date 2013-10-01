.class final Landroid/webkit/WebViewClassic$SendScrollToWebCore;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SendScrollToWebCore"
.end annotation


# instance fields
.field private mPostpone:Z

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter

    .prologue
    .line 5686
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5692
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->mPostpone:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5686
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SendScrollToWebCore;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5688
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2400(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5689
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 5691
    :cond_0
    return-void
.end method

.method public send(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 5695
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5696
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->mPostpone:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 5697
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->run()V

    .line 5701
    :goto_0
    return-void

    .line 5699
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setPostpone(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 5693
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic$SendScrollToWebCore;->mPostpone:Z

    return-void
.end method
