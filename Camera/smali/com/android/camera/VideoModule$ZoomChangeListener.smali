.class Lcom/android/camera/VideoModule$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2538
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$ZoomChangeListener;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 2549
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 2546
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/android/camera/VideoModule$ZoomChangeListener;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/VideoModule;->processZoomValueChanged(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/camera/VideoModule;->access$1800(Lcom/android/camera/VideoModule;IZ)V

    .line 2542
    return-void
.end method
