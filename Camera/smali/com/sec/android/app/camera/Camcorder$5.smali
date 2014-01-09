.class Lcom/sec/android/app/camera/Camcorder$5;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$5;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->resetScaleDetector()V

    .line 1662
    return-void
.end method
