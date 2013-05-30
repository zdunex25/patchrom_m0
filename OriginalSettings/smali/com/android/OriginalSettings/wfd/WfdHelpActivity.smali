.class public Lcom/android/OriginalSettings/wfd/WfdHelpActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WfdHelpActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInSettingsMode:Z

.field private mMenuItemLearnNfc:Landroid/view/MenuItem;

.field private mMenuItemStartLink:Landroid/view/MenuItem;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWriteTagMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 58
    const-string v0, "WfdHelpActivity"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 61
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 77
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$1;-><init>(Lcom/android/OriginalSettings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static changeNfcEnabled(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 207
    move v1, p1

    .line 208
    .local v1, desiredState:Z
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 209
    .local v2, nfcAdapter:Landroid/nfc/NfcAdapter;
    const-string v0, "WfdHelpActivity"

    .line 211
    .local v0, TAG:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 257
    :goto_0
    return v5

    .line 216
    :cond_0
    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$4;

    const-string v4, "toggleNFC"

    invoke-direct {v3, v4, v1, v2}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$4;-><init>(Ljava/lang/String;ZLandroid/nfc/NfcAdapter;)V

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$4;->start()V

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 428
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 429
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_1

    .line 430
    const-string v2, "WfdHelpActivity"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 436
    :goto_0
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 446
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 433
    :cond_1
    const-string v2, "WfdHelpActivity"

    const-string v3, "mWfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :sswitch_0
    const-string v2, "WfdHelpActivity"

    const-string v3, "isWfdConnected >> true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .parameter "addr"

    .prologue
    .line 365
    const-string v2, "WfdHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make Ndef message - addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 369
    .local v0, addrBytes:[B
    const-string v2, "com.android.settings.wfd"

    const-string v3, "addr"

    invoke-static {v2, v3, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 371
    .local v1, addrRecord:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method private setHelpText()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 193
    const v3, 0x7f0b029a

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;

    .line 194
    .local v0, idxTextLayout:Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
    const v3, 0x7f0903bd

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, result_msg2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 199
    const v3, 0x7f0903bf

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, result_msg4:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private setHelpText2()V
    .locals 2

    .prologue
    .line 170
    const v1, 0x7f0b029a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;

    .line 171
    .local v0, idxTextLayout:Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 173
    const v1, 0x7f0903bb

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 175
    const v1, 0x7f0903bc

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 177
    return-void
.end method

.method private setIsSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    goto :goto_0
.end method

.method private setWriteText()V
    .locals 6

    .prologue
    const v5, 0x7f0b029a

    const v4, 0x7f0903c1

    .line 180
    const-string v1, "WfdHelpActivity"

    const-string v2, "setWriteText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;

    .line 184
    .local v0, idxTextLayout:Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 185
    const v1, 0x7f0903c2

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    .end local v0           #idxTextLayout:Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;

    .line 188
    .restart local v0       #idxTextLayout:Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 488
    const v1, 0x7f0400eb

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 489
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setHelpText()V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 493
    const v1, 0x7f0400f1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 494
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setWriteText()V

    goto :goto_0

    .line 495
    :cond_2
    const-string v1, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 497
    const v1, 0x7f0400f2

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 498
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setHelpText2()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 94
    const-string v6, "WfdHelpActivity"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "com.samsung.wfd.ALL_CLEAR"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setIsSettings()V

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 104
    .local v1, bar:Landroid/app/ActionBar;
    iget-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v6, :cond_0

    .line 105
    const/high16 v6, 0x7f03

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setIcon(I)V

    .line 108
    :cond_0
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    const v6, 0x7f090376

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, intentAction:Ljava/lang/String;
    const-string v6, "WfdHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received action is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v6, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    iput-boolean v9, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 116
    const v6, 0x7f0400eb

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setHelpText()V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    const-string v6, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    iput-boolean v10, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 122
    const v6, 0x7f0400f1

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setWriteText()V

    .line 126
    const-string v6, "nfc"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NfcManager;

    .line 127
    .local v5, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 128
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0903b9

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 131
    const v6, 0x7f09063a

    new-instance v7, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$2;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$2;-><init>(Lcom/android/OriginalSettings/wfd/WfdHelpActivity;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v6, 0x7f09063b

    new-instance v7, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$3;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity$3;-><init>(Lcom/android/OriginalSettings/wfd/WfdHelpActivity;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 152
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #manager:Landroid/nfc/NfcManager;
    :cond_3
    const-string v6, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    iput-boolean v9, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 154
    const v6, 0x7f0400f2

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->setHelpText2()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_nfc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    const v0, 0x7f0903b5

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 459
    :goto_0
    const/4 v0, 0x2

    const v1, 0x7f0903b4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 462
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-nez v0, :cond_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 464
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 456
    :cond_1
    const v0, 0x7f0903b3

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 285
    const-string v4, "WfdHelpActivity"

    const-string v5, "onNewIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWriteTagMode ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-eqz v4, :cond_0

    .line 289
    const-string v4, "WfdPickerActivity"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 291
    .local v3, pref_r:Landroid/content/SharedPreferences;
    const-string v4, "wlan.wfd.lastdeviceaddr"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, mLastDeviceAddr:Ljava/lang/String;
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 296
    .local v2, message:Landroid/nfc/NdefMessage;
    const-string v4, "android.nfc.extra.TAG"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 298
    .local v0, detectedTag:Landroid/nfc/Tag;
    invoke-virtual {p0, v2, v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    .line 300
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 305
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    .end local v1           #mLastDeviceAddr:Ljava/lang/String;
    .end local v2           #message:Landroid/nfc/NdefMessage;
    .end local v3           #pref_r:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v4, "WfdHelpActivity"

    const-string v5, "Activity received other intent from NDEF_DISCOVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/high16 v6, 0x1080

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 424
    :goto_0
    return v2

    .line 381
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    .line 383
    .local v1, wfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    const-string v2, "called_by_nfc"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_0

    .line 389
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wfdManager:Lcom/samsung/wfd/WfdManager;
    :goto_1
    move v2, v3

    .line 424
    goto :goto_0

    .line 393
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.NFC_HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_2

    .line 395
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 401
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_3

    .line 404
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 408
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_5

    .line 412
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 418
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v2, "WfdHelpActivity"

    const-string v4, "back button tapped"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->finish()V

    goto :goto_1

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 276
    const-string v1, "WfdHelpActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 279
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Lcom/android/OriginalSettings/BaseActivity;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 262
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 263
    const-string v2, "WfdHelpActivity"

    const-string v4, "onResume"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 266
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 268
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    move-object v2, v3

    .line 269
    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Lcom/android/OriginalSettings/BaseActivity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 10
    .parameter "message"
    .parameter "tag"

    .prologue
    const v9, 0x7f0903b8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    const-string v7, "WfdHelpActivity"

    const-string v8, "writeTag"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v7

    array-length v4, v7

    .line 312
    .local v4, size:I
    :try_start_0
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v3

    .line 313
    .local v3, ndef:Landroid/nfc/tech/Ndef;
    if-eqz v3, :cond_3

    .line 314
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->connect()V

    .line 316
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 317
    const-string v6, "WfdHelpActivity"

    const-string v7, "Tag is read-only."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v6, "Tag is read-only"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 361
    .end local v3           #ndef:Landroid/nfc/tech/Ndef;
    :goto_0
    return v5

    .line 322
    .restart local v3       #ndef:Landroid/nfc/tech/Ndef;
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    if-ge v7, v4, :cond_1

    .line 323
    const-string v6, "WfdHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tag capacity is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes, message is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    .end local v3           #ndef:Landroid/nfc/tech/Ndef;
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WfdHelpActivity"

    const-string v7, "Failed to write tag"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {p0, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #ndef:Landroid/nfc/tech/Ndef;
    :cond_1
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 329
    const v7, 0x7f0b02b1

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 330
    .local v2, isReadOnly:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 331
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    .line 334
    :cond_2
    const-string v7, "WfdHelpActivity"

    const-string v8, "Wrote message to pre-formatted tag."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const v7, 0x7f0903b7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 336
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.wfd.ALL_CLEAR"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wfd/WfdHelpActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 337
    goto :goto_0

    .line 339
    .end local v2           #isReadOnly:Landroid/widget/CheckBox;
    :cond_3
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 340
    .local v1, format:Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_4

    .line 342
    :try_start_2
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 343
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 344
    const-string v7, "WfdHelpActivity"

    const-string v8, "Formatted tag and wrote message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v6

    .line 345
    goto/16 :goto_0

    .line 346
    :catch_1
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v6, "WfdHelpActivity"

    const-string v7, "Failed to format tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const v6, 0x7f0903b8

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 352
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const-string v6, "WfdHelpActivity"

    const-string v7, "Tag doesn\'t support NDEF."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
