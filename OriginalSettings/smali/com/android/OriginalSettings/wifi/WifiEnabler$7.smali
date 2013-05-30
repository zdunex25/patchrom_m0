.class Lcom/android/OriginalSettings/wifi/WifiEnabler$7;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$7;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$7;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setWifiEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$700(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    .line 561
    return-void
.end method
