.class public Lcom/android/OriginalSettings/guide/WifiGuider;
.super Lcom/android/OriginalSettings/guide/ListGuiderBase;
.source "WifiGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected mWiFiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/ListGuiderBase;-><init>(Landroid/app/Activity;)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/guide/WifiGuider;->mWiFiEnabled:Z

    .line 25
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 27
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/guide/WifiGuider;->mWiFiEnabled:Z

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 87
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiGuider;->showCompleteDialog()V

    .line 91
    :cond_0
    return-void
.end method

.method public showHelpDialog(Z)V
    .locals 9
    .parameter "isWifiOn"

    .prologue
    const/4 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 36
    iget-object v5, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/OriginalSettings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;

    if-eqz p1, :cond_1

    sget-object v5, Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;

    :goto_0
    if-ne v6, v5, :cond_2

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    sget-object v5, Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;

    goto :goto_0

    .line 41
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mEnabler:Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;

    :goto_2
    iput-object v5, p0, Lcom/android/OriginalSettings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;

    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Landroid/app/ListActivity;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 46
    .local v1, list:Landroid/widget/ListView;
    new-instance v5, Lcom/android/OriginalSettings/guide/WifiGuider$1;

    invoke-direct {v5, p0, v1}, Lcom/android/OriginalSettings/guide/WifiGuider$1;-><init>(Lcom/android/OriginalSettings/guide/WifiGuider;Landroid/widget/ListView;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    iget-object v5, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v5, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 58
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 60
    .local v3, wifiApState:I
    const/16 v5, 0xc

    if-eq v3, v5, :cond_0

    const/16 v5, 0xd

    if-eq v3, v5, :cond_0

    .line 68
    .end local v3           #wifiApState:I
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    if-eqz p1, :cond_6

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040066

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, guideView:Landroid/view/View;
    const/4 v2, 0x0

    .line 73
    .local v2, v:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/OriginalSettings/guide/WifiGuider;->mWiFiEnabled:Z

    if-nez v5, :cond_4

    const v5, 0x7f0b0006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 75
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .end local v2           #v:Landroid/view/View;
    :cond_4
    :goto_3
    invoke-super {p0, v0}, Lcom/android/OriginalSettings/guide/ListGuiderBase;->showDialog(Landroid/view/View;)V

    goto :goto_1

    .line 41
    .end local v0           #guideView:Landroid/view/View;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_5
    sget-object v5, Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/OriginalSettings/guide/ListGuiderBase$GuideStates;

    goto :goto_2

    .line 78
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040065

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_3
.end method
