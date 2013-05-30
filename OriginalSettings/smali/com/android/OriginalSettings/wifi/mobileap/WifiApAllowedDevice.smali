.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mFragment:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V
    .locals 1
    .parameter "context"
    .parameter "mac"
    .parameter "name"
    .parameter "fragment"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->setLayoutResource(I)V

    .line 36
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .locals 6

    .prologue
    .line 73
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    .local v0, dialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    .line 75
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 65
    instance-of v1, p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    .line 69
    .local v0, other:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f0b01fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0b01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 103
    check-cast p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->update(Ljava/lang/String;)Z

    .line 105
    :cond_0
    return-void
.end method

.method update(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    .line 81
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    .line 82
    .local v0, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->notifyHierarchyChanged()V

    .line 84
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->mFragment:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 89
    .end local v0           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
