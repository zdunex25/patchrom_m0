.class Lcom/android/camera/Camcorder$17;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder;->showSnapshotLimitationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4599
    iput-object p1, p0, Lcom/android/camera/Camcorder$17;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 4601
    iget-object v2, p0, Lcom/android/camera/Camcorder$17;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, p0, Lcom/android/camera/Camcorder$17;->this$0:Lcom/android/camera/Camcorder;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/android/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v0}, Lcom/android/camera/Camcorder;->access$2002(Lcom/android/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4602
    iget-object v0, p0, Lcom/android/camera/Camcorder$17;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$2000(Lcom/android/camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 4603
    iget-object v0, p0, Lcom/android/camera/Camcorder$17;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraSettings;->setSnapshotLimitationDialog(I)V

    .line 4604
    return-void

    :cond_0
    move v0, v1

    .line 4603
    goto :goto_0
.end method
