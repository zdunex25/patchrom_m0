.class Lcom/android/camera/Camcorder$4;
.super Landroid/telephony/PhoneStateListener;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/camera/Camcorder$4;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 585
    packed-switch p1, :pswitch_data_0

    .line 592
    iget-object v0, p0, Lcom/android/camera/Camcorder$4;->this$0:Lcom/android/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camcorder;->mIsCallStateRinging:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camcorder;->access$1902(Lcom/android/camera/Camcorder;Z)Z

    .line 595
    :goto_0
    return-void

    .line 588
    :pswitch_0
    const-string v0, "Camcorder"

    const-string v1, "PhoneStateListener On Call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/camera/Camcorder$4;->this$0:Lcom/android/camera/Camcorder;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/Camcorder;->mIsCallStateRinging:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camcorder;->access$1902(Lcom/android/camera/Camcorder;Z)Z

    goto :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
