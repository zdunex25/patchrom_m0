.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->isGpsEULAEnabledinCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3655
    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3657
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/android/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$1502(Lcom/android/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 3658
    iget-object v0, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 3659
    return-void
.end method
