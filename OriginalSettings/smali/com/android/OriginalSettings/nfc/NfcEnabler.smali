.class public Lcom/android/OriginalSettings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcSwitch:Landroid/widget/Switch;

.field private final mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private final mReaderIntentFilter:Landroid/content/IntentFilter;

.field private final mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 4
    .parameter "context"
    .parameter "nfcSwitch"
    .parameter "sBeam"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;-><init>(Lcom/android/OriginalSettings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 118
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 119
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 120
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 124
    if-eqz p3, :cond_0

    .line 125
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-direct {v1, p0, p3}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;-><init>(Lcom/android/OriginalSettings/nfc/NfcEnabler;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    .line 130
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 132
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 139
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 141
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 143
    return-void

    .line 127
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    goto :goto_0

    .line 135
    :cond_1
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 4
    .parameter "context"
    .parameter "nfcSwitch"
    .parameter "androidBeam"
    .parameter "readerSwitch"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$1;-><init>(Lcom/android/OriginalSettings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 89
    iput-object p2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 90
    iput-object p4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 91
    iput-object p3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 92
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    .line 93
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 97
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 107
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 109
    return-void

    .line 101
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    iput-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private handleNfcReaderStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 352
    packed-switch p1, :pswitch_data_0

    .line 366
    :goto_0
    :pswitch_0
    return-void

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 362
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->changeState(I)V

    .line 304
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-direct {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 307
    invoke-direct {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 308
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    invoke-direct {p0, v3, v0, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 311
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 315
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 317
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-direct {p0, v4, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 323
    :goto_1
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-direct {p0, v4, v3, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_1

    .line 326
    :pswitch_2
    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 327
    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 328
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 331
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto :goto_0

    .line 334
    :pswitch_3
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 335
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 336
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 339
    :cond_4
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto :goto_0

    .line 343
    :pswitch_4
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 344
    invoke-direct {p0, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 345
    invoke-direct {p0, v3, v3, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 346
    invoke-direct {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setAndroidBeamSwitch(ZZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"
    .parameter "bSummary"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndroidBeamSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] summary["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 398
    :cond_1
    if-eqz p3, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private setNfcSwitch(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setNfcSwitchPref(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitchPref : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method private setReaderSwitch(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReaderSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 287
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    .local v0, desiredState:Z
    const-string v3, "NFC_ENABLER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange : desiredState >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 237
    const-string v2, "NFC_ENABLER"

    const-string v3, "onPreferenceChange : mNfcSwitchPref same state"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return v1

    .line 241
    :cond_0
    if-eqz v0, :cond_2

    .line 242
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_1
    :goto_1
    move v1, v2

    .line 279
    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_4

    .line 249
    const-string v2, "NFC_ENABLER"

    const-string v3, "onPreferenceChange : mReaderSwitch same state"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_4
    if-eqz v0, :cond_5

    .line 254
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_1

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_1

    .line 259
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 260
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_7

    .line 261
    const-string v2, "NFC_ENABLER"

    const-string v3, "onPreferenceChange : mAndroidBeam same state"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_7
    if-eqz v0, :cond_8

    .line 266
    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 267
    invoke-direct {p0, v1, v1, v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_0

    .line 269
    :cond_8
    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 270
    invoke-direct {p0, v1, v2, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_0

    .line 275
    :cond_9
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->getSwitch()Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->onPrefChange(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setOnPrefChangeCallback(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "NFC_ENABLER"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0, v2, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 157
    invoke-direct {p0, v2, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 158
    invoke-direct {p0, v2, v2, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 159
    invoke-direct {p0, v2, v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->updateLastState()V

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setOnPrefChangeCallback(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    goto :goto_0
.end method
