.class Lcom/android/camera/PhotoModule$10;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/android/camera/PhotoModule$10;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/camera/PhotoModule$10;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/android/camera/PhotoModule$10;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 1950
    :cond_0
    return-void
.end method
