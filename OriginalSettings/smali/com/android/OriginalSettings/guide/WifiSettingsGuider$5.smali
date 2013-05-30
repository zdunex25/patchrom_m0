.class Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V
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
    .line 451
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    #getter for: Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->access$200(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    #getter for: Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->access$200(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 458
    return-void
.end method
