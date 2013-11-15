.class Lcom/android/camera/PhotoModule$7;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->onShutterButtonClick()V
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
    .line 1767
    iput-object p1, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$6402(Lcom/android/camera/PhotoModule;Z)Z

    .line 1770
    iget-object v0, p0, Lcom/android/camera/PhotoModule$7;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 1771
    return-void
.end method
