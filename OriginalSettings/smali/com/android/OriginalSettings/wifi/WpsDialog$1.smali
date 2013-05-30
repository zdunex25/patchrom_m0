.class Lcom/android/OriginalSettings/wifi/WpsDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #calls: Lcom/android/OriginalSettings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$200(Lcom/android/OriginalSettings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V

    .line 141
    return-void
.end method
