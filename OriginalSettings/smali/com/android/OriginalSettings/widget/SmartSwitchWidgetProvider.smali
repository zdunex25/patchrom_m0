.class public Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmartSwitchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;,
        Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;
    }
.end annotation


# static fields
.field private static final SMARTSTAY_ANIMATION_IMAGE:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

.field private static sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SmartSwitchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 339
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    return-void

    :array_0
    .array-data 0x4
        0xb3t 0x2t 0x2t 0x7ft
        0xb4t 0x2t 0x2t 0x7ft
        0xb5t 0x2t 0x2t 0x7ft
        0xb6t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 331
    iput-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 337
    iput-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 396
    new-instance v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$2;-><init>(Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b026f

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 120
    const v1, 0x7f0b0273

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 122
    const v1, 0x7f0b0277

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 124
    const v1, 0x7f0b027b

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 127
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 128
    return-object v0
.end method

.method private static checkController(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 80
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;->register()V

    .line 82
    :cond_0
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 71
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;->startObserving()V

    .line 73
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    const-class v1, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 255
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 257
    return-object v0
.end method

.method private static isEnabled(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-nez p1, :cond_2

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "motion_engine"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 222
    const-string v1, "SmartSwitchWidgetProvider"

    const-string v3, "Motion is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 240
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v1

    .line 225
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 227
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    if-ne p1, v1, :cond_3

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "intelligent_sleep_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 231
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "voice_input_control"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 235
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 236
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 237
    sget-object v1, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;->isEnabled()Z

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 240
    goto :goto_0
.end method

.method private showSmartStayGuideDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 348
    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 350
    iput-object v6, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 353
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 355
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400a6

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 356
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b00b5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 357
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v4, 0x7f0b00b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 359
    const v4, 0x7f0b01d9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 360
    .local v3, textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090b7a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const v4, 0x7f0b01da

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 363
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090b7b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const v4, 0x7f0b01db

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 366
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090b7c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const v4, 0x7f0b01dc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 369
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090cb9

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090b74

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 377
    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 379
    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 380
    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$1;-><init>(Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 390
    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 391
    const-string v4, "SmartSwitchWidgetProvider"

    const-string v5, "Start animation..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 393
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 395
    :cond_1
    return-void
.end method

.method private showVoiceCmdGuideDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 431
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 433
    iput-object v6, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 436
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 438
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040039

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 441
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090c33

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090c35

    new-instance v5, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$3;-><init>(Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090c36

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 457
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 459
    iget-object v3, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 460
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v0, "SmartSwitchWidgetProvider"

    const-string v1, "Stop animation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v0, "SmartSwitchWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    iget v2, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    iget v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 409
    iget v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    sget-object v1, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 410
    iget-object v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    .line 412
    iget-object v2, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    iget v0, p0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    if-nez v0, :cond_2

    const-wide/16 v0, 0x7d0

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1f4

    goto :goto_1
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f0b0274

    const v4, 0x7f0b0272

    const v1, 0x7f0b0270

    const v3, 0x7f020315

    const v2, 0x7f020314

    .line 153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const v0, 0x7f020318

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 156
    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 166
    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const v0, 0x7f02031c

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 169
    const v0, 0x7f0b0276

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 179
    :goto_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const v0, 0x7f0b0278

    const v1, 0x7f02031e

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 182
    const v0, 0x7f0b027a

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 192
    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const v0, 0x7f0b027c

    const v1, 0x7f02031a

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 195
    const v0, 0x7f0b027e

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 203
    :goto_3
    return-void

    .line 159
    :cond_0
    const v0, 0x7f020319

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 161
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 172
    :cond_1
    const v0, 0x7f02031d

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 174
    const v0, 0x7f0b0276

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 185
    :cond_2
    const v0, 0x7f0b0278

    const v1, 0x7f02031f

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 187
    const v0, 0x7f0b027a

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 198
    :cond_3
    const v0, 0x7f0b027c

    const v1, 0x7f02031b

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 200
    const v0, 0x7f0b027e

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 138
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 139
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 141
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 142
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;->stopObserving()V

    .line 104
    sput-object v1, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;->unregister()V

    .line 108
    sput-object v1, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 110
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 268
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 269
    const-string v7, "SmartSwitchWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START onReceive()_intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 273
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, buttonId:I
    invoke-static {p1, v0}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    .line 275
    .local v3, enabled:Z
    if-nez v0, :cond_3

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 277
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_2

    .line 279
    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 327
    .end local v0           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #enabled:Z
    :cond_1
    return-void

    .line 282
    .restart local v0       #buttonId:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #data:Landroid/net/Uri;
    .restart local v3       #enabled:Z
    :cond_2
    const-string v6, "motion_engine"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 287
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_3
    if-ne v0, v5, :cond_6

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 289
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_4

    .line 290
    const-string v5, "intelligent_sleep_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 295
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_stay_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V

    .line 299
    :cond_5
    const-string v6, "intelligent_sleep_mode"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 302
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_9

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 304
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_7

    .line 305
    const-string v5, "voice_input_control"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 307
    :cond_7
    const-string v7, "voiceinputcontrol_showNeverAgain"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    .line 310
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->showVoiceCmdGuideDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 312
    :cond_8
    const-string v6, "voice_input_control"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 315
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_9
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    .line 316
    if-nez v3, :cond_a

    :goto_1
    invoke-static {v5}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider$SBeamController;->toggle(Z)V

    goto :goto_0

    :cond_a
    move v5, v6

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 90
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 91
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
