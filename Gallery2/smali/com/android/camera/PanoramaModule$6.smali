.class Lcom/android/camera/PanoramaModule$6;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$6;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$6;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule$6;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$6;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->cancelHighResComputation()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$2300(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0
.end method
