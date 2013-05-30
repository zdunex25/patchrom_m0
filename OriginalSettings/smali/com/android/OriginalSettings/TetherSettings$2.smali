.class Lcom/android/OriginalSettings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/OriginalSettings/TetherSettings$2;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$2;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$100(Lcom/android/OriginalSettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$2;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$100(Lcom/android/OriginalSettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$2;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #calls: Lcom/android/OriginalSettings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/TetherSettings;->access$200(Lcom/android/OriginalSettings/TetherSettings;I)V

    .line 385
    return-void
.end method
