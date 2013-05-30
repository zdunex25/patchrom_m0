.class public Lcom/android/OriginalSettings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/MasterClearConfirm$2;,
        Lcom/android/OriginalSettings/MasterClearConfirm$PWState;
    }
.end annotation


# static fields
.field private static mTelMan:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    sget-object v0, Lcom/android/OriginalSettings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mPWState:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    .line 94
    new-instance v0, Lcom/android/OriginalSettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/MasterClearConfirm$1;-><init>(Lcom/android/OriginalSettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DoMasterReset()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 125
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v0, :cond_3

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableModemResetDuringFactoryReset"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    const-string v0, "MasterClearConfirm"

    const-string v1, "ready to Factory reset. Call SecFactoryReset."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/OriginalSettings/MasterClearModemReset;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FACTORY"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 176
    sget-object v0, Lcom/android/OriginalSettings/MasterClearConfirm$2;->$SwitchMap$com$android$settings$MasterClearConfirm$PWState:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mPWState:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/MasterClearConfirm$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/android/OriginalSettings/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mPWState:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    .line 180
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/OriginalSettings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :pswitch_1
    sget-object v0, Lcom/android/OriginalSettings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mPWState:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    .line 186
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f090020

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, phone_password:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    sget-object v1, Lcom/android/OriginalSettings/MasterClearConfirm$PWState;->NEW:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    iput-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mPWState:Lcom/android/OriginalSettings/MasterClearConfirm$PWState;

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09002d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/OriginalSettings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/OriginalSettings/MasterClearConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->DoMasterReset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->StartPassword()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method public static isSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/android/OriginalSettings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 197
    sget-object v1, Lcom/android/OriginalSettings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/OriginalSettings/MasterClearConfirm;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    :cond_1
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    if-ne p2, v2, :cond_0

    .line 213
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/MasterClearConfirm;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    if-ne p2, v2, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->DoMasterReset()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 265
    return-void

    .line 264
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 243
    const v0, 0x7f040081

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 244
    invoke-direct {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 245
    iget-object v0, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 252
    invoke-virtual {p0}, Lcom/android/OriginalSettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 253
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/OriginalSettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "subject"
    .parameter "password"
    .parameter "requestCode"

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0, p4}, Lcom/android/OriginalSettings/MasterClearConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    return-void
.end method
