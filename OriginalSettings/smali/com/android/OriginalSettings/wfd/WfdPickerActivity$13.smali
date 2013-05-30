.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;
.super Landroid/os/CountDownTimer;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 1967
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3110(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    .line 1962
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan tick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I
    invoke-static {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    return-void
.end method
