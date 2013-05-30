.class public Lcom/android/OriginalSettings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 64
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 67
    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 71
    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 74
    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 77
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFileCopying:Z

    .line 83
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 86
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 88
    iput v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 90
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 92
    iput v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 97
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 99
    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 108
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 109
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 110
    const v0, 0x7f09085b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setTitle(I)V

    .line 111
    const v0, 0x7f09085c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setSummary(I)V

    .line 112
    const v0, 0x7f09085d

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 113
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    .line 115
    const v0, 0x7f020072

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 116
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/flipfont/FontListPreference;Lcom/android/OriginalSettings/flipfont/FontListAdapter;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method


# virtual methods
.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 526
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 527
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 528
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 336
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 338
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 339
    iget v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 342
    .end local v1           #v:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 352
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 354
    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v4, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    .line 359
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 360
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 362
    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 371
    :cond_3
    const/4 v2, 0x0

    .line 372
    .local v2, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 373
    .local v1, fontName:Ljava/lang/String;
    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 374
    iput p2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 376
    if-ge p2, v7, :cond_4

    .line 377
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090861

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 379
    .local v3, s:Ljava/lang/String;
    move-object v2, v3

    .line 390
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090034

    new-instance v5, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090035

    new-instance v6, Lcom/android/OriginalSettings/flipfont/FontListPreference$2;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$2;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontListPreference$4;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$4;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 414
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 415
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 417
    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 418
    iput-boolean v7, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    goto :goto_0

    .line 381
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090860

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 383
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v4, :cond_5

    .line 384
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 385
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 387
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x0

    .line 475
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 476
    iget-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_1

    .line 478
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090863

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 483
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 484
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 485
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    iput-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 496
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090862

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    .restart local v1       #uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 492
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 493
    iput-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method public onOkButtonPressed()V
    .locals 29

    .prologue
    .line 232
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 238
    :goto_0
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 242
    new-instance v26, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 246
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 247
    .local v24, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 251
    new-instance v13, Lcom/android/OriginalSettings/flipfont/FontWriter;

    invoke-direct {v13}, Lcom/android/OriginalSettings/flipfont/FontWriter;-><init>()V

    .line 252
    .local v13, fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    if-eqz v24, :cond_1

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    const-string v28, "default"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-nez v24, :cond_3

    .line 257
    const-string v26, "FontListPreference"

    const-string v27, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_1
    return-void

    .line 236
    .end local v13           #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .end local v24           #selectedFont:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_0

    .line 262
    .restart local v13       #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .restart local v24       #selectedFont:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/OriginalSettings/flipfont/Typeface;

    move-result-object v23

    .line 264
    .local v23, sansTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    const-string v26, ".xml"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 265
    .local v14, fontdir:Ljava/lang/String;
    const-string v26, " "

    const-string v27, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v14}, Lcom/android/OriginalSettings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 268
    .local v12, fontDir:Ljava/io/File;
    const/16 v25, 0x0

    .line 269
    .local v25, tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    if-eqz v23, :cond_4

    .line 270
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_4

    .line 271
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    check-cast v25, Lcom/android/OriginalSettings/flipfont/TypefaceFile;

    .line 274
    .restart local v25       #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, apkname:Ljava/lang/String;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    .line 279
    .local v21, res:Landroid/content/res/Resources;
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 280
    .local v8, assetManager:Landroid/content/res/AssetManager;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fonts/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 282
    .local v17, in:Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v13, v12, v0, v1}, Lcom/android/OriginalSettings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v7           #apkname:Ljava/lang/String;
    .end local v8           #assetManager:Landroid/content/res/AssetManager;
    .end local v17           #in:Ljava/io/InputStream;
    .end local v21           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 283
    :catch_0
    move-exception v11

    .line 284
    .local v11, ex:Ljava/lang/Exception;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception in file operation, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 289
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v15           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 293
    .local v6, am:Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 294
    .local v9, config:Landroid/content/res/Configuration;
    new-instance v20, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 295
    .local v20, randomizer:Ljava/util/Random;
    const/16 v19, 0x0

    .line 296
    .local v19, min:I
    const/16 v18, 0x2710

    .line 297
    .local v18, max:I
    const/16 v26, 0x2711

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v26

    iput v0, v9, Landroid/content/res/Configuration;->FlipFont:I

    .line 298
    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v9           #config:Landroid/content/res/Configuration;
    .end local v18           #max:I
    .end local v19           #min:I
    .end local v20           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v27, "activity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 308
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v26, 0x32

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 309
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v15, 0x1

    .line 310
    .restart local v15       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 311
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 313
    .local v22, s:Ljava/lang/String;
    const-string v26, "com.android.settings"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "com.samsung.music"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "com.sec.android.app.music"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_5

    .line 314
    const-string v26, "com.infraware.polarisoffice"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "com.infraware.polarisoffice4"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "com.infraware.polarisviewer4"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_7

    .line 316
    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 301
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 303
    .local v10, e:Landroid/os/RemoteException;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Intentionally left blank, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 319
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v22       #s:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 325
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v22           #s:Ljava/lang/String;
    :cond_8
    const-string v26, "com.android.settings"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 327
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->exit(I)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->restartLater()V

    goto/16 :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 133
    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09085f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, okButton:Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_3

    .line 151
    const-string v1, "HelveticaNeueRegular.xml"

    .line 152
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 153
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    iget v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 173
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    new-instance v2, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    :cond_1
    return-void

    .line 139
    .end local v0           #okButton:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09085e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #okButton:Ljava/lang/String;
    goto/16 :goto_0

    .line 158
    :cond_3
    const-string v1, "default"

    .line 159
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 160
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_4
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 168
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 512
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 515
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 517
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 426
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadPreferences()V

    .line 427
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 428
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 429
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090861

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 431
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 438
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090034

    new-instance v6, Lcom/android/OriginalSettings/flipfont/FontListPreference$6;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$6;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090035

    new-instance v7, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    new-instance v5, Lcom/android/OriginalSettings/flipfont/FontListPreference$7;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$7;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 461
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 463
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 464
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 465
    iput-boolean v8, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 466
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 467
    return-void

    .line 433
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090860

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 435
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 206
    const v0, 0x7f090864

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 208
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadPreferences()V

    .line 210
    iget-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 213
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->selectDialog()V

    .line 215
    :cond_2
    return-void
.end method
