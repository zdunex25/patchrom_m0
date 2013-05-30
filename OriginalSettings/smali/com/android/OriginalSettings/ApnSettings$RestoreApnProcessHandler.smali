.class Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/OriginalSettings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    .line 607
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 608
    iput-object p3, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 609
    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 613
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 615
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 616
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/OriginalSettings/ApnSettings;->access$700()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 621
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler$1;-><init>(Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
