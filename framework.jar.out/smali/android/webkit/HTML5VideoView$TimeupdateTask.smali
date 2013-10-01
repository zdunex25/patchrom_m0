.class final Landroid/webkit/HTML5VideoView$TimeupdateTask;
.super Ljava/util/TimerTask;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeupdateTask"
.end annotation


# instance fields
.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 293
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$TimeupdateTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$TimeupdateTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onTimeupdate()V

    .line 299
    return-void
.end method
