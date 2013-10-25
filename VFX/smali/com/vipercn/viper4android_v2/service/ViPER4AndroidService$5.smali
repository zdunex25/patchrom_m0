.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;
.super Landroid/content/BroadcastReceiver;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 850
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 855
    const-string v5, "ViPER4Android"

    const-string v6, "m3rdAPI_QUERY_EQUALIZER_Receiver::onReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.vipercn.viper4android_v2.QUERY_EQUALIZER_RESULT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v2, itResult:Landroid/content/Intent;
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v3

    .line 859
    .local v3, mode:Ljava/lang/String;
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.vipercn.viper4android_v2."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 860
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v5, "viper4android.headphonefx.fireq.enable"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 861
    .local v0, bEQEnabled:Z
    const-string v5, "equalizer_enabled"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 862
    const-string v5, "equalizer_bandcount"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 864
    .local v1, faEQBands:[F
    const-string v5, "equalizer_bandfreq"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 865
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$5;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v5, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 866
    return-void

    .line 863
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xf8t 0x41t
        0x0t 0x0t 0x78t 0x42t
        0x0t 0x0t 0xfat 0x42t
        0x0t 0x0t 0x7at 0x43t
        0x0t 0x0t 0xfat 0x43t
        0x0t 0x0t 0x7at 0x44t
        0x0t 0x0t 0xfat 0x44t
        0x0t 0x0t 0x7at 0x45t
        0x0t 0x0t 0xfat 0x45t
        0x0t 0x0t 0x7at 0x46t
    .end array-data
.end method
