.class Lcom/android/OriginalSettings/nfc/SBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "SBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/nfc/SBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nfc/SBeam;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/SBeam$1;->this$0:Lcom/android/OriginalSettings/nfc/SBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeam$1;->this$0:Lcom/android/OriginalSettings/nfc/SBeam;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/OriginalSettings/nfc/SBeam;->handleNfcStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/nfc/SBeam;->access$000(Lcom/android/OriginalSettings/nfc/SBeam;I)V

    .line 86
    :cond_0
    return-void
.end method
