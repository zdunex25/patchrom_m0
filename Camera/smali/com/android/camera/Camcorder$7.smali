.class Lcom/android/camera/Camcorder$7;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder;->isGpsEULAEnabledinCamcorder()V
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
    .line 2936
    iput-object p1, p0, Lcom/android/camera/Camcorder$7;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2938
    iget-object v1, p0, Lcom/android/camera/Camcorder$7;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, p0, Lcom/android/camera/Camcorder$7;->this$0:Lcom/android/camera/Camcorder;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/android/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/android/camera/Camcorder;->access$2002(Lcom/android/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 2939
    iget-object v0, p0, Lcom/android/camera/Camcorder$7;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$2000(Lcom/android/camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2940
    return-void
.end method
