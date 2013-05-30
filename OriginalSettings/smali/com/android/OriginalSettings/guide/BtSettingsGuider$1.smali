.class Lcom/android/OriginalSettings/guide/BtSettingsGuider$1;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V
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
    .line 249
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$1;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$1;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 252
    return-void
.end method
