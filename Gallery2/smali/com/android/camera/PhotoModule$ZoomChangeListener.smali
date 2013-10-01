.class Lcom/android/camera/PhotoModule$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 736
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 729
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/PhotoModule;->processZoomValueChanged(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;IZ)V

    .line 722
    return-void
.end method
