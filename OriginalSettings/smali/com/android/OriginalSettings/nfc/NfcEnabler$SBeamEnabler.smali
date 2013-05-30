.class Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SBeamEnabler"
.end annotation


# instance fields
.field private mReqNfcTurnOn:Z

.field private mSbeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSbeamEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mbOn:Z

.field private mbOnLastState:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nfc/NfcEnabler;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 5
    .parameter
    .parameter "sbeam"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 430
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    .line 423
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 424
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    .line 425
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 427
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    .line 428
    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    .line 431
    iput-object p2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    .line 432
    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$200(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    .line 433
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    .line 436
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 454
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public changeState(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 514
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 515
    const-string v0, "NFC_ENABLER"

    const-string v1, "Settings.SBeamEnabler.changeState > there\'s no instance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    if-ne v4, p1, :cond_3

    .line 520
    const-string v0, "NFC_ENABLER"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_OFF]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_2

    .line 522
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 524
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto :goto_0

    .line 525
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_7

    .line 526
    const-string v0, "NFC_ENABLER"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_ON]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 529
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler.changeState > Last : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    if-eqz v0, :cond_5

    .line 532
    invoke-virtual {p0, v4, v4}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    .line 543
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    goto :goto_0

    .line 534
    :cond_5
    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 537
    :cond_6
    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    .line 538
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_1

    .line 544
    :cond_7
    const/4 v0, 0x4

    if-ne v0, p1, :cond_8

    .line 545
    const-string v0, "NFC_ENABLER"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_TURNING_OFF]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 547
    :cond_8
    const/4 v0, 0x2

    if-ne v0, p1, :cond_9

    .line 548
    const-string v0, "NFC_ENABLER"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_TURNING_ON]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 550
    :cond_9
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 551
    const-string v0, "NFC_ENABLER"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_CARD_MODE_ON]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto/16 :goto_0
.end method

.method getSwitch()Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method public onPrefChange(Z)Z
    .locals 8
    .parameter "bOn"

    .prologue
    const v7, 0x7f090210

    const/16 v6, 0xbb8

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 472
    const-string v1, "NFC_ENABLER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.SBeamEnabler.onPrefChange : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=>["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-ne v1, p1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v4

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "sbeam_last_status"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    .line 483
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 486
    :cond_2
    if-eqz p1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 489
    .local v0, nState:I
    const-string v1, "NFC_ENABLER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.SBeamEnabler.onPrefChange :  current state > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v1, 0x5

    if-ne v1, v0, :cond_3

    .line 492
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$200(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 493
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 494
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 496
    :cond_3
    if-eq v5, v0, :cond_4

    const/4 v1, 0x2

    if-eq v1, v0, :cond_4

    .line 497
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$200(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 498
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 499
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 503
    :cond_4
    if-ne v5, v0, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    #getter for: Lcom/android/OriginalSettings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->access$300(Lcom/android/OriginalSettings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto/16 :goto_0
.end method

.method public setOnPrefChangeCallback(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 459
    return-void
.end method

.method setState(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bOn"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeamEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    :cond_0
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler.setState > Enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iput-boolean p2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 565
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    if-eq v0, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 568
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler.setState : setChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    return-void
.end method

.method public updateLastState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    .line 463
    iget-object v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 464
    const-string v0, "NFC_ENABLER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler.updateLastState : On >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Last >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method
