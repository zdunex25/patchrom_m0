.class Lcom/sec/android/app/fm/MainActivity$40;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->registerBroadcastScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6585
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$40;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6588
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6589
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6590
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6591
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$40;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 6594
    :cond_0
    return-void
.end method
