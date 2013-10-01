.class public interface abstract Lcom/android/camera/CameraModule;
.super Ljava/lang/Object;
.source "CameraModule.java"


# virtual methods
.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
.end method

.method public abstract installIntentFilter()V
.end method

.method public abstract needsSwitcher()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCaptureTextureCopied()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPauseAfterSuper()V
.end method

.method public abstract onPauseBeforeSuper()V
.end method

.method public abstract onPreviewTextureCopied()V
.end method

.method public abstract onResumeAfterSuper()V
.end method

.method public abstract onResumeBeforeSuper()V
.end method

.method public abstract onShowSwitcherPopup()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onStop()V
.end method

.method public abstract onUserInteraction()V
.end method

.method public abstract updateCameraAppView()V
.end method

.method public abstract updateStorageHintOnResume()Z
.end method
