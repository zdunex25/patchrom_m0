.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final BUTTON_INVISIBLE:I

.field private final BUTTON_VISIBLE_MINUS:I

.field private final BUTTON_VISIBLE_PLUS:I

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsButtonState:I

.field private mIsPushShift:I

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "deviceName"
    .parameter "mac"
    .parameter "ip"
    .parameter "connectedTime"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 57
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_INVISIBLE:I

    .line 58
    iput v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_PLUS:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_MINUS:I

    .line 67
    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 68
    iput v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 73
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 85
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 86
    const v0, 0x7f0400ba

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 263
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 264
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 265
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 267
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 269
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const v2, 0x7f0902fa

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 173
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 177
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_0
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    .local v0, dialog:Landroid/app/AlertDialog;
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 180
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :pswitch_3
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    .line 181
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 144
    instance-of v1, p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 145
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 147
    check-cast v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    .line 148
    .local v0, other:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getConnectedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 92
    .local v4, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v2

    .line 93
    .local v2, isContains:Z
    if-eqz v2, :cond_0

    .line 94
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 99
    const v5, 0x7f0b01ff

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    .local v0, btn:Landroid/widget/LinearLayout;
    const v5, 0x7f0b0201

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .local v1, btnImg:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 105
    .local v3, wc:Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 106
    if-nez v2, :cond_1

    .line 107
    iput v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 108
    const v5, 0x7f0201c6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    :cond_1
    :goto_0
    const v5, 0x7f0b01fe

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 117
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v8, :cond_3

    .line 118
    if-eqz v2, :cond_1

    .line 119
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 120
    const v5, 0x7f0201c7

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_3
    iput v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 131
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v12, 0x1

    .line 221
    instance-of v7, p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v7, :cond_0

    .line 222
    const-string v7, "WifiApConnectedDevice"

    const-string v8, "onClick"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p1

    .line 223
    check-cast v6, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .line 224
    .local v6, whitelsitDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 226
    invoke-virtual {v6}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 259
    .end local v6           #whitelsitDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 228
    .restart local v6       #whitelsitDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1
    :pswitch_1
    const-string v7, "WifiApConnectedDevice"

    const-string v8, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    check-cast p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 231
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const v3, 0x7f0902ce

    .line 250
    .local v3, msgId:I
    :goto_1
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#ff"

    const-string v9, "#"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, color:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<font color="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, toastMsg:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 255
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto :goto_0

    .line 235
    .end local v1           #color:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #toastMsg:Ljava/lang/String;
    .restart local p1
    :pswitch_2
    const-string v7, "WifiApConnectedDevice"

    const-string v8, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 238
    const v3, 0x7f0902cf

    .line 240
    .restart local v3       #msgId:I
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 241
    .local v2, msg:Landroid/os/Message;
    const/4 v7, 0x4

    iput v7, v2, Landroid/os/Message;->what:I

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "mac"

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 190
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 192
    sparse-switch p2, :sswitch_data_0

    .line 212
    :cond_0
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_2

    .line 213
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 216
    :cond_1
    :goto_0
    return v0

    .line 194
    :sswitch_0
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 197
    :sswitch_1
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 198
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 201
    :sswitch_2
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 202
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 205
    :sswitch_3
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    if-nez v1, :cond_1

    .line 206
    iget v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v0, :cond_1

    .line 207
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_1
    .end sparse-switch
.end method
