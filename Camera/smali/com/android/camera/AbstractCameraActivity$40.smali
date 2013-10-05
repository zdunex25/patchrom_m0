.class Lcom/android/camera/AbstractCameraActivity$40;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2383
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$40;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2385
    iget-object v1, p0, Lcom/android/camera/AbstractCameraActivity$40;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$40;->this$0:Lcom/android/camera/AbstractCameraActivity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lcom/android/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2386
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$40;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2387
    return-void
.end method
