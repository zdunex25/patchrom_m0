.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$6;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$1100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)V

    .line 389
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$6;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->fillLayout()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$1200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)V

    .line 390
    return-void
.end method
