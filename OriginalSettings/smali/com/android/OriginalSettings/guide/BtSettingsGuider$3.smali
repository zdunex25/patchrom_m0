.class Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/guide/BtSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    #getter for: Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->access$100(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    #getter for: Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->access$100(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 403
    return-void
.end method
