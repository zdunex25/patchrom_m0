.class Lcom/android/OriginalSettings/wifi/WpsDialog$4;
.super Ljava/util/TimerTask;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WpsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$4;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$4;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$500(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/wifi/WpsDialog$4$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WpsDialog$4$1;-><init>(Lcom/android/OriginalSettings/wifi/WpsDialog$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method
