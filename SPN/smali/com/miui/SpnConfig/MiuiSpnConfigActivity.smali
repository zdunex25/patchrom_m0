.class public Lcom/miui/SpnConfig/MiuiSpnConfigActivity;
.super Landroid/app/Activity;
.source "MiuiSpnConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mOffButton:Landroid/widget/Button;

.field private mOnButton:Landroid/widget/Button;

.field private mOperator:Ljava/lang/String;

.field private mOperatorName:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity$1;-><init>(Lcom/miui/SpnConfig/MiuiSpnConfigActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/miui/SpnConfig/MiuiSpnConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->observe()V

    return-void
.end method

.method private observe()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 97
    .local v0, isAirplaneMode:Z
    :goto_0
    iget-object v3, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOnButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOffButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    .restart local v0       #isAirplaneMode:Z
    :cond_1
    move v2, v1

    .line 97
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOBILE_OPERATOR_NAME_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperatorName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f050002
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->setContentView(I)V

    .line 33
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperatorName:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mSaveButton:Landroid/widget/Button;

    .line 36
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOnButton:Landroid/widget/Button;

    .line 37
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOffButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOnButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOffButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/high16 v2, 0x7f05

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 45
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperator:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v2}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperatorName:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 49
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->observe()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 61
    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 60
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOBILE_OPERATOR_NAME_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, saved:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperatorName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mOperatorName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/miui/SpnConfig/MiuiSpnConfigActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
