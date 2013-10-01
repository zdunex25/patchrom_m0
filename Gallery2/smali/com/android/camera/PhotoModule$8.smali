.class Lcom/android/camera/PhotoModule$8;
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

.field final synthetic val$hdr:Lcom/android/camera/HdrSoftwareProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/HdrSoftwareProcessor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$8;->val$hdr:Lcom/android/camera/HdrSoftwareProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1715
    new-instance v0, Lcom/android/camera/PhotoModule$8$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$8$1;-><init>(Lcom/android/camera/PhotoModule$8;)V

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$8$1;->start()V

    .line 1750
    return-void
.end method
