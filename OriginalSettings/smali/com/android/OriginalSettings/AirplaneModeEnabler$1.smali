.class Lcom/android/OriginalSettings/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/OriginalSettings/AirplaneModeEnabler$1;->this$0:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AirplaneModeEnabler$1;->this$0:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    #calls: Lcom/android/OriginalSettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->access$000(Lcom/android/OriginalSettings/AirplaneModeEnabler;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
