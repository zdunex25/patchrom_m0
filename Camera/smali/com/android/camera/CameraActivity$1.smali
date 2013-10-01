.class Lcom/android/camera/CameraActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->onCameraSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iput p2, p0, Lcom/android/camera/CameraActivity$1;->val$i:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/CameraActivity$1;->this$0:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/CameraActivity$1;->val$i:I

    #calls: Lcom/android/camera/CameraActivity;->doChangeCamera(I)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;I)V

    .line 149
    return-void
.end method
