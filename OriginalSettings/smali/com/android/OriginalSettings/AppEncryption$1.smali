.class Lcom/android/OriginalSettings/AppEncryption$1;
.super Landroid/content/BroadcastReceiver;
.source "AppEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AppEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AppEncryption;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AppEncryption;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/OriginalSettings/AppEncryption$1;->this$0:Lcom/android/OriginalSettings/AppEncryption;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "i"

    .prologue
    .line 40
    return-void
.end method
