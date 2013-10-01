.class final Lcom/android/server/WiredAccessoryManager$SettingsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$SettingsChangedReceiver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryManager;Lcom/android/server/WiredAccessoryManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$SettingsChangedReceiver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieved a Settings Changed Action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "com.cyanogenmod.settings.SamsungDock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, data:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieved a Dock Audio change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v1, :cond_1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$SettingsChangedReceiver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/WiredAccessoryManager;->dockAudioEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$302(Lcom/android/server/WiredAccessoryManager;Z)Z

    .line 130
    .end local v1           #data:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v1       #data:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$SettingsChangedReceiver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/WiredAccessoryManager;->dockAudioEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$302(Lcom/android/server/WiredAccessoryManager;Z)Z

    goto :goto_0
.end method
