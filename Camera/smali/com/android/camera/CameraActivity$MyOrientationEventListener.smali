.class Lcom/android/camera/CameraActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    .line 116
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 124
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    #setter for: Lcom/android/camera/CameraActivity;->mLastRawOrientation:I
    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$002(Lcom/android/camera/CameraActivity;I)I

    .line 126
    iget-object v0, p0, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    goto :goto_0
.end method
