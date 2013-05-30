.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->autoConnecting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2118
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 2122
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$302(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 2123
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 2124
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xd

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 2125
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 2114
    const-string v0, "WfdPickerActivity"

    const-string v1, " connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    return-void
.end method
