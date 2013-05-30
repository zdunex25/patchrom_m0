.class public Lcom/android/OriginalSettings/EasyModeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/EasyModeSettings$SpinnerOnItemSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/EasyModeSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/EasyModeSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/EasyModeSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    return p1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 163
    if-eqz p1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02008b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 172
    if-eqz p1, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    const v1, 0x7f02008d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 180
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 267
    const-string v2, "EasyModeSettings"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 278
    .local v0, saved_value:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 279
    .local v1, selected_value:I
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_vale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    if-ne v0, v1, :cond_1

    .end local v0           #saved_value:I
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 282
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    .line 289
    return-void

    .line 276
    .end local v1           #selected_value:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #saved_value:I
    goto :goto_0

    .restart local v1       #selected_value:I
    :cond_1
    move v0, v1

    .line 281
    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/EasyModeSettings;->setHasOptionsMenu(Z)V

    .line 135
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->dismissDialog()V

    .line 126
    :cond_1
    return-void

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "EasyModeSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 142
    .local v0, isTablet:Z
    const v3, 0x7f090125

    invoke-interface {p1, v2, v5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    .line 143
    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 144
    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 148
    const/4 v3, 0x3

    const v4, 0x7f090941

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    .line 149
    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 154
    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    return-void

    :cond_1
    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    const v2, 0x7f040057

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    .line 70
    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    .line 74
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cdd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cd0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    .line 80
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090009

    iget-object v5, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 82
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 83
    new-instance v2, Lcom/android/OriginalSettings/EasyModeSettings$SpinnerOnItemSelectedListener;

    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/OriginalSettings/EasyModeSettings$SpinnerOnItemSelectedListener;-><init>(Lcom/android/OriginalSettings/EasyModeSettings;Landroid/app/Fragment;Landroid/widget/ArrayAdapter;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 84
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_onConfigurationChange"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    .local v0, isOnConfigurationChanged:Z
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "easymode_spinner_value"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    .line 103
    :goto_0
    iget v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    if-nez v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cde

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0201b0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 116
    :goto_1
    return-object v1

    .line 89
    :cond_0
    if-nez p3, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v7, v2, :cond_1

    .line 93
    iput v6, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 96
    :cond_1
    iput v7, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 100
    :cond_2
    const-string v2, "easymode_spinner_value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 113
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ce1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0201b2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 305
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v1, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 250
    :goto_0
    return v1

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 189
    :pswitch_1
    const-string v2, "EasyModeSettings"

    const-string v3, "onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    .line 192
    .local v0, saved_value:I
    :goto_1
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mSpinner.getSelectedItemPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/EasyModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->finish()V

    goto :goto_0

    .end local v0           #saved_value:I
    :cond_0
    move v0, v1

    .line 191
    goto :goto_1

    .line 200
    .restart local v0       #saved_value:I
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    if-nez v2, :cond_3

    .line 201
    const-string v2, "EasyModeSettings"

    const-string v3, "onClick 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->dismissDialog()V

    .line 203
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ce3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090ce2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/EasyModeSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/EasyModeSettings$2;-><init>(Lcom/android/OriginalSettings/EasyModeSettings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/EasyModeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/EasyModeSettings$1;-><init>(Lcom/android/OriginalSettings/EasyModeSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 222
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 225
    :cond_3
    const-string v2, "EasyModeSettings"

    const-string v3, "onClick 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->dismissDialog()V

    .line 227
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ce0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090cdf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/EasyModeSettings$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/EasyModeSettings$4;-><init>(Lcom/android/OriginalSettings/EasyModeSettings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/EasyModeSettings$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/EasyModeSettings$3;-><init>(Lcom/android/OriginalSettings/EasyModeSettings;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 246
    iget-object v2, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 294
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/android/OriginalSettings/EasyModeSettings;->updateState()V

    .line 264
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 129
    const-string v0, "easymode_spinner_value"

    iget v1, p0, Lcom/android/OriginalSettings/EasyModeSettings;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    return-void
.end method
