.class Lcom/android/OriginalSettings/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/MasterClearModemReset;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/OriginalSettings/MasterClearModemReset$1;->this$0:Lcom/android/OriginalSettings/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, error:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    const-string v1, "MasterClearModemReset"

    const-string v2, "Something weird happened"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v1, "MasterClearModemReset"

    const-string v2, "Modem reset is done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearModemReset$1;->this$0:Lcom/android/OriginalSettings/MasterClearModemReset;

    #calls: Lcom/android/OriginalSettings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v1}, Lcom/android/OriginalSettings/MasterClearModemReset;->access$000(Lcom/android/OriginalSettings/MasterClearModemReset;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_0
    .end packed-switch
.end method
