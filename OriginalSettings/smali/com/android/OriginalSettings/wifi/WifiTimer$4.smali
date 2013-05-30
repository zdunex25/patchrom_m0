.class Lcom/android/OriginalSettings/wifi/WifiTimer$4;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiTimer$4;->this$0:Lcom/android/OriginalSettings/wifi/WifiTimer;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiTimer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 187
    return-void
.end method
