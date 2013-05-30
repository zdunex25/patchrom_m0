.class Lcom/android/server/WifiOffloadService$11;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$11;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$11;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "back key timer resetting"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1622
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1402(Z)Z

    .line 1623
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1502(I)I

    .line 1624
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1602(I)I

    .line 1626
    return-void
.end method
