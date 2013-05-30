.class Lcom/android/OriginalSettings/guide/WifiSettingsGuider$3;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$3;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$3;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    const/4 v1, 0x1

    #setter for: Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mClosed:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->access$002(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;Z)Z

    .line 221
    return-void
.end method
