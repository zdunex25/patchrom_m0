.class final Lcom/android/server/Encryption3LMService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Encryption3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Encryption3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Encryption3LMService;


# direct methods
.method private constructor <init>(Lcom/android/server/Encryption3LMService;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;->this$0:Lcom/android/server/Encryption3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/Encryption3LMService;Lcom/android/server/Encryption3LMService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/Encryption3LMService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method
