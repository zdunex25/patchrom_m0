.class Lcom/android/OriginalSettings/guide/BtSettingsGuider;
.super Lcom/android/OriginalSettings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/guide/BtSettingsGuider$7;,
        Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mBTEnabled:Z

.field private final mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mIsBTReceiverRegistered:Z

.field private mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 118
    sget-object v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 121
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 123
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    iput-boolean v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 126
    iput v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 131
    iput-boolean v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mIsBTReceiverRegistered:Z

    .line 510
    new-instance v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$6;-><init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mIsBTReceiverRegistered:Z

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/guide/BtSettingsGuider;Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onReceive(Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .parameter "resID"

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, bubbleView:Landroid/view/View;
    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 414
    .local v1, summary:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 417
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 387
    .local v1, bubbleView:Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 389
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 391
    iget-object v3, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 393
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 395
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 396
    new-instance v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$3;-><init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_0
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 329
    const/4 v0, -0x1

    .line 330
    .local v0, layout:I
    const/4 v1, -0x1

    .line 332
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v2, :cond_0

    .line 382
    :goto_0
    return-void

    .line 336
    :cond_0
    const v0, 0x7f040060

    .line 338
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->setFocus(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 340
    sget-object v2, Lcom/android/OriginalSettings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 381
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 342
    :pswitch_0
    const v1, 0x7f090d00

    .line 343
    goto :goto_1

    .line 345
    :pswitch_1
    const v1, 0x7f090cfe

    .line 346
    goto :goto_1

    .line 348
    :pswitch_2
    const v1, 0x7f090cfd

    .line 349
    goto :goto_1

    .line 351
    :pswitch_3
    const v1, 0x7f090cff

    .line 352
    const v0, 0x7f04005d

    .line 353
    goto :goto_1

    .line 355
    :pswitch_4
    const v1, 0x7f090cf2

    .line 356
    const v0, 0x7f04005c

    .line 360
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 363
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;-><init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 572
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 577
    :cond_0
    return-void
.end method

.method private onDeviceBondStateChanged(I)V
    .locals 1
    .parameter "bondState"

    .prologue
    .line 586
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 587
    sget-object v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 589
    :cond_0
    return-void
.end method

.method private onReceive(Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .parameter "action"
    .parameter "intent"

    .prologue
    const/high16 v2, -0x8000

    .line 530
    sget-object v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 549
    :goto_0
    return-void

    .line 532
    :pswitch_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 537
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 541
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 545
    :pswitch_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onDeviceBondStateChanged(I)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 559
    return-void
.end method

.method private setFocus(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 688
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 716
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 692
    :pswitch_1
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 698
    :pswitch_2
    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 701
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 704
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "resID"
    .parameter "layout"
    .parameter "type"

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, created:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 289
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(I)V

    .line 290
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 292
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 293
    const/4 v0, 0x1

    .line 296
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_2

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 302
    :goto_0
    if-eqz v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 306
    :cond_1
    iput-object p3, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    .line 307
    iput p2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 308
    return-void

    .line 299
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .parameter "isScanning"

    .prologue
    .line 208
    iget-boolean v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-nez v1, :cond_0

    .line 209
    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 229
    :goto_0
    return-void

    .line 211
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :cond_1
    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 215
    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 221
    .local v0, cachedDevices:I
    iget v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4

    .line 222
    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 224
    :cond_4
    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 321
    iput-object v1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 322
    sget-object v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 324
    iput-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 326
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 158
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 315
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 153
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->finish()V

    .line 198
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 603
    .local v2, passToView:Z
    sget-object v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 663
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 668
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 675
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 606
    :pswitch_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 621
    const/4 v1, 0x1

    goto :goto_0

    .line 622
    :cond_2
    if-ne p1, v5, :cond_0

    .line 623
    const/4 v2, 0x0

    .line 624
    const/4 v1, 0x1

    .line 626
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_0

    .line 632
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 635
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 636
    const/4 v2, 0x0

    .line 637
    const/4 v1, 0x1

    goto :goto_0

    .line 639
    :cond_3
    if-ne p1, v5, :cond_0

    .line 640
    const/4 v2, 0x0

    .line 641
    const/4 v1, 0x1

    .line 643
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_0

    .line 650
    :pswitch_2
    if-ne p1, v5, :cond_0

    .line 651
    const/4 v2, 0x0

    .line 652
    const/4 v1, 0x1

    .line 654
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_0

    .line 670
    .restart local v0       #focus:Landroid/view/View;
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 594
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mIsBTReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mIsBTReceiverRegistered:Z

    .line 192
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 486
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$5;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$5;-><init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 168
    :cond_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mIsBTReceiverRegistered:Z

    if-nez v2, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/android/OriginalSettings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iput-boolean v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mIsBTReceiverRegistered:Z

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v3, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 176
    sget-object v2, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 183
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-ne v2, v3, :cond_4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 184
    return-void

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-eq v2, v3, :cond_2

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 183
    goto :goto_1
.end method

.method public setEnabler(Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;)V
    .locals 0
    .parameter "enabler"

    .prologue
    .line 502
    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 428
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 430
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 434
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 436
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 437
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 441
    :cond_0
    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 446
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 428
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCompleteDialog()V
    .locals 5

    .prologue
    .line 450
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 453
    .local v1, res:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 455
    const v2, 0x7f090cfa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090cf9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/OriginalSettings/guide/BtSettingsGuider$4;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$4;-><init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 473
    :cond_0
    return-void

    .line 451
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public showHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "type"

    .prologue
    const v2, 0x7f040060

    .line 232
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->setFocus(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 240
    sget-object v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 242
    :pswitch_0
    const v0, 0x7f090d00

    invoke-direct {p0, v0, v2, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 245
    :pswitch_1
    const v0, 0x7f090cfe

    invoke-direct {p0, v0, v2, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 249
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider$1;-><init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 254
    const v0, 0x7f090cfd

    invoke-direct {p0, v0, v2, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 257
    :pswitch_3
    const v0, 0x7f090cff

    const v1, 0x7f04005d

    invoke-direct {p0, v0, v1, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 261
    :pswitch_4
    const v0, 0x7f090cf2

    const v1, 0x7f04005c

    invoke-direct {p0, v0, v1, p1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V

    .line 263
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_1

    .line 277
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
