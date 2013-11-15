.class final Lcom/android/camera/VideoModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2622
    iput-object p1, p0, Lcom/android/camera/VideoModule$AutoFocusCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2622
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$AutoFocusCallback;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/android/camera/VideoModule$AutoFocusCallback;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoModule;->mFocusing:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$2102(Lcom/android/camera/VideoModule;Z)Z

    .line 2626
    return-void
.end method
