.class Lcom/android/camera/PanoramaModule$5;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;


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
    .line 625
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$5;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$5;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$600(Lcom/android/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$5;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/android/camera/PanoramaModule;->access$2100(Lcom/android/camera/PanoramaModule;I)V

    .line 631
    :cond_0
    return-void
.end method
