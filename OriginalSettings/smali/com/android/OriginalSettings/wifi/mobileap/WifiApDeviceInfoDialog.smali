.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0
    .parameter "context"
    .parameter "device"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    .line 38
    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 64
    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    .line 65
    .local v0, hour:J
    const-wide/16 v8, 0xe10

    rem-long v2, p1, v8

    .line 66
    .local v2, hour_rest:J
    const-wide/16 v8, 0x3c

    div-long v4, v2, v8

    .line 67
    .local v4, min:J
    const-wide/16 v8, 0x3c

    rem-long v6, v2, v8

    .line 69
    .local v6, sec:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 42
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setView(Landroid/view/View;)V

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setInverseBackgroundForced(Z)V

    .line 46
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const v2, 0x7f0b02ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v2, 0x7f0b02cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, connDateTime:Ljava/text/SimpleDateFormat;
    const v2, 0x7f0b02d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v2, 0x7f0b02d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v6

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0905b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 59
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
