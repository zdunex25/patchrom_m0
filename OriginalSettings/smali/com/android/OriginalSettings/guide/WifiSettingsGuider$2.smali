.class Lcom/android/OriginalSettings/guide/WifiSettingsGuider$2;
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
    .line 206
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 211
    return-void
.end method
