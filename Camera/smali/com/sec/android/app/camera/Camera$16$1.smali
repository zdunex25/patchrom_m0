.class Lcom/sec/android/app/camera/Camera$16$1;
.super Ljava/util/TimerTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$16;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$16;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5786
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$16$1;->this$1:Lcom/sec/android/app/camera/Camera$16;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$16$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5791
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16$1;->this$1:Lcom/sec/android/app/camera/Camera$16;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$16$1;->val$intent:Landroid/content/Intent;

    const/16 v2, 0x7d6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5792
    return-void
.end method
