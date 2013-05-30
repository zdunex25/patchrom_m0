.class Lcom/android/OriginalSettings/deviceinfo/Status$3;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    #calls: Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->access$500(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    .line 262
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status$3;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    #calls: Lcom/android/OriginalSettings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->access$600(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    .line 263
    return-void
.end method
