.class public Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderTurnoffAllSounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderTurnoffAllSounds"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 205
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b000a

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 79
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 80
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 198
    sget-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    .line 200
    sget-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->startObserving()V

    .line 202
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    const-class v1, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
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

    .line 135
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 192
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, all_sound_off_intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    const-string v1, "mute"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    const-string v1, "mute"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 4
    .parameter "views"
    .parameter "context"

    .prologue
    const v3, 0x7f0b000e

    const v2, 0x7f0b000d

    .line 107
    const v0, 0x7f0b000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    const v0, 0x7f0b000c

    const v1, 0x7f090b61

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const v0, 0x7f020009

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    const v0, 0x7f020001

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 113
    const-string v0, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v1, "updateButtons , icon_on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    const v0, 0x7f020008

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 117
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 118
    const-string v0, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v1, "updateButtons , icon_off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 92
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 94
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v2, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 97
    invoke-static {p0}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->checkObserver(Landroid/content/Context;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    sget-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->stopObserving()V

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    .line 70
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->checkObserver(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 155
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, buttonId:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 159
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v3, "BUTTON_CENTER : "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->toggleWidgetMode(Landroid/content/Context;)V

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateWidget(Landroid/content/Context;)V

    .line 171
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 50
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {p1}, Lcom/android/OriginalSettings/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 54
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 55
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
