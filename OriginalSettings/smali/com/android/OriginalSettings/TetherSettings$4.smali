.class Lcom/android/OriginalSettings/TetherSettings$4;
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
    .line 418
    iput-object p1, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$300(Lcom/android/OriginalSettings/TetherSettings;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$500(Lcom/android/OriginalSettings/TetherSettings;)Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$500(Lcom/android/OriginalSettings/TetherSettings;)Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$500(Lcom/android/OriginalSettings/TetherSettings;)Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 435
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    const/4 v1, -0x1

    #setter for: Lcom/android/OriginalSettings/TetherSettings;->mTetherChoice:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/TetherSettings;->access$302(Lcom/android/OriginalSettings/TetherSettings;I)I

    .line 436
    return-void

    .line 424
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$400(Lcom/android/OriginalSettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 427
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$4;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$100(Lcom/android/OriginalSettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
