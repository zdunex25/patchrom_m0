.class Lcom/android/camera/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/android/camera/Util$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/camera/Util$BackgroundJob$1;->this$0:Lcom/android/camera/Util$BackgroundJob;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/Util$BackgroundJob$1;->this$0:Lcom/android/camera/Util$BackgroundJob;

    #getter for: Lcom/android/camera/Util$BackgroundJob;->mActivity:Lcom/android/camera/MonitoredActivity;
    invoke-static {v0}, Lcom/android/camera/Util$BackgroundJob;->access$000(Lcom/android/camera/Util$BackgroundJob;)Lcom/android/camera/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Util$BackgroundJob$1;->this$0:Lcom/android/camera/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/android/camera/MonitoredActivity;->removeLifeCycleListener(Lcom/android/camera/MonitoredActivity$LifeCycleListener;)V

    .line 490
    return-void
.end method
