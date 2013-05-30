.class public Lcom/sec/android/app/fm/ui/MotionDialog;
.super Landroid/app/AlertDialog;
.source "MotionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCheck:Landroid/widget/CheckBox;

.field private mImageMotion:Landroid/widget/ImageView;

.field private mTextMotionDisabled:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, layout:Landroid/view/View;
    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/fm/ui/MotionDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/ui/MotionDialog$1;-><init>(Lcom/sec/android/app/fm/ui/MotionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/fm/ui/MotionDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/fm/ui/MotionDialog$2;-><init>(Lcom/sec/android/app/fm/ui/MotionDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mTextMotionDisabled:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mImageMotion:Landroid/widget/ImageView;

    .line 53
    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/MotionDialog;->setTitle(I)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setView(Landroid/view/View;)V

    .line 57
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 59
    const/4 v1, -0x3

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/MotionDialog;->setIcon(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, -0x3

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 91
    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mTextMotionDisabled:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mImageMotion:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 102
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 105
    return-void

    .line 96
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mTextMotionDisabled:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, settingIntent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 118
    return-void
.end method
