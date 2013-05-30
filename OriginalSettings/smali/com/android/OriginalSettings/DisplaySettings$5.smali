.class Lcom/android/OriginalSettings/DisplaySettings$5;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings$5;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings$5;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    #calls: Lcom/android/OriginalSettings/DisplaySettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DisplaySettings;->access$400(Lcom/android/OriginalSettings/DisplaySettings;)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
