.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$2;
.super Ljava/lang/Object;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$2;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$2;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;)V

    .line 58
    return-void
.end method
