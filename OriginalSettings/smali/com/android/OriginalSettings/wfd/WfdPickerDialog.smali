.class public Lcom/android/OriginalSettings/wfd/WfdPickerDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mConfirmSoundID:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOK:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field mFragmentLayout:Landroid/widget/LinearLayout;

.field private mMasterStreamVolume:I

.field private mRingerMode:I

.field private mShowMainDlg:Z

.field private mShowWelcomeDlg:Z

.field mWelcomeLayout:Landroid/widget/LinearLayout;

.field mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

.field private mWriteIfSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    return-void
.end method

.method private connWithoutMainDlg()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 158
    const/16 v7, 0xb

    .line 159
    .local v7, DIALOG_AUTO_CONNECT:I
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 160
    :cond_0
    const-string v0, "WfdPickerDialog"

    const-string v1, "Silent mode or volume is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->setContentView(I)V

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setAutoConnStarted()V

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialogp(I)V

    .line 168
    return-void

    .line 162
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private initWfdPickerDialog()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    return-void
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 246
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 248
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 258
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 254
    :sswitch_0
    const-string v1, "WfdPickerDialog"

    const-string v2, "isWfdConnected >> true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->finish()V

    .line 203
    :cond_0
    return-void
.end method

.method changeToScan()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    return-void
.end method

.method changeToStop()V
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0905f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog()V

    .line 129
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startScanningWfdPickerDialog()V

    .line 134
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    .end local v0           #mScanString:Ljava/lang/String;
    .end local v1           #mStopString:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x7f0b02a2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->setDefaultKeyMode(I)V

    .line 55
    const v2, 0x7f0400ed

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tag_write_if_success"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tag_write_if_success"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_main_dialog"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_main_dialog"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_welcome_dialog"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_welcome_dialog"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0b029d

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    iput-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    .line 76
    const v2, 0x7f09039d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->setTitle(I)V

    .line 78
    const v2, 0x7f0b02a2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    .line 79
    const v2, 0x7f0b02a3

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    .line 80
    const v2, 0x7f0b02a4

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    .line 82
    const v2, 0x7f0b029e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    .line 83
    const v2, 0x7f0b029b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    .line 86
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget-object v2, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_3

    .line 91
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v2, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 93
    :cond_3
    sget-object v2, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f08

    invoke-virtual {v2, p0, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    sput v2, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    .line 96
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 97
    .local v1, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mRingerMode:I

    .line 98
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    .line 100
    const-string v2, "WfdPickerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMainDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v2, "WfdPickerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteIfSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "WfdPickerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWelcomeDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v2, :cond_5

    .line 104
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    .line 110
    :cond_4
    :goto_0
    return-void

    .line 105
    :cond_5
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v2, :cond_6

    .line 106
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 107
    :cond_6
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v2, :cond_4

    .line 108
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 227
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 230
    const/4 v1, 0x0

    sput-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v1, :cond_2

    .line 234
    const-string v1, "WfdPickerDialog"

    const-string v2, "going to ACTION_WRITE_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intentToPicker:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "called_by_nfc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->finish()V

    .line 243
    .end local v0           #intentToPicker:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 150
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 154
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 208
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 214
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v1, :cond_0

    .line 217
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 218
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 221
    .end local v0           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_0
    return-void
.end method
