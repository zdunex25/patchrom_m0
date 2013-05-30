.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 1387
    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->setP2PDisable(Z)V

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1396
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v2, 0x2

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 1397
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToScan()V

    .line 1399
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1403
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 1405
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1406
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1408
    return-void
.end method
