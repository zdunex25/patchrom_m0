.class Lcom/android/camera/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2180
    iget-object v0, p0, Lcom/android/camera/VideoModule$3;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 2182
    :cond_0
    return-void
.end method
