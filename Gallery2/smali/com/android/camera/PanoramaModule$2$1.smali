.class Lcom/android/camera/PanoramaModule$2$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoramaModule$2;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule$2;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$2$1;->this$1:Lcom/android/camera/PanoramaModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2$1;->this$1:Lcom/android/camera/PanoramaModule$2;

    iget-object v0, v0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1000(Lcom/android/camera/PanoramaModule;)V

    .line 303
    return-void
.end method
