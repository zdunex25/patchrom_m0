.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$10;,
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;,
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsLiveWallpaper:Z

.field private mIsTouchExplorationEnabled:Z

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallBackground:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallIcon:Landroid/widget/ImageView;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgIcon:Landroid/widget/ImageView;

.field private mMissedMsgList:Landroid/view/View;

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mMissedVvm:Landroid/widget/LinearLayout;

.field private mMissedVvmBackground:Landroid/widget/LinearLayout;

.field private mMissedVvmCount:I

.field private mMissedVvmIcon:Landroid/widget/ImageView;

.field private mMissedVvmTextView:Landroid/widget/TextView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUpperLayout:Landroid/widget/RelativeLayout;

.field private mWaterlockHelpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 9
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x4

    const/4 v6, 0x1

    .line 163
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->DEBUG:Z

    .line 67
    const-string v4, "com.android.phone"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->CALL_PKG:Ljava/lang/String;

    .line 69
    const-string v4, "com.android.mms"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 71
    const-string v4, "com.android.email"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->EMAIL_PKG:Ljava/lang/String;

    .line 80
    const/16 v4, 0x12c2

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MISSED_EVENT_UPDATE:I

    .line 82
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->REQ_INDEX_CALL_EMAIL:I

    .line 84
    const/16 v4, 0x7b

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->REQ_INDEX_MSG:I

    .line 86
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 88
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 90
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    .line 136
    sget-object v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    .line 142
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    .line 145
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    .line 146
    iput-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    .line 148
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 167
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 169
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    .line 171
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 172
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 174
    .local v3, orientation:I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 175
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "portrait mode"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v4, 0x109005d

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    :goto_0
    const v4, 0x1020303

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    if-nez v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "touch_exploration_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, exploreByTouchMode:I
    if-ne v0, v6, :cond_4

    .line 200
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    .line 201
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "explore by touch mode on"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0           #exploreByTouchMode:I
    :cond_0
    :goto_1
    const v4, 0x10202fd

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    .line 208
    const v4, 0x1020300

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    .line 209
    const v4, 0x1020307

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmIcon:Landroid/widget/ImageView;

    .line 213
    const v4, 0x1020304

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    .line 214
    const v4, 0x1020309

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    .line 215
    const v4, 0x1020305

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    .line 217
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    const v4, 0x10202fc

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    .line 223
    const v4, 0x10202ff

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 224
    const v4, 0x1020306

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    .line 225
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    const v4, 0x10202fe

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    .line 233
    const v4, 0x1020301

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 234
    const v4, 0x1020308

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmTextView:Landroid/widget/TextView;

    .line 235
    const v4, 0x1020302

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    .line 236
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_wallpaper"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.hovering_ui"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 246
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-direct {v4, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    .line 247
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-direct {v4, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$5;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 425
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$6;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 447
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$7;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 476
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    .line 482
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$8;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 493
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$9;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 505
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "content://com.sec.badge/apps"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 510
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 511
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 513
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 514
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 515
    return-void

    .line 178
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_3
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "landscape mode"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v4, 0x109005e

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 203
    .restart local v0       #exploreByTouchMode:I
    :cond_4
    const-string v4, "CircleMissedEventWidget"

    const-string v7, "explore by touch mode off"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #exploreByTouchMode:I
    :cond_5
    move v4, v6

    .line 239
    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    return v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 672
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 675
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v1

    .line 678
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_3

    .line 679
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 686
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_5

    .line 690
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 680
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_4

    .line 681
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 682
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_2

    .line 683
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 691
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 556
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)V
    .locals 6
    .parameter "notiMode"

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v2, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 716
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 718
    :try_start_0
    const-string v2, "CircleMissedEventWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendintent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_1
    :goto_1
    return-void

    .line 707
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_4

    .line 708
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v2, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 711
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedVvm:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_0

    .line 712
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 713
    .local v1, tmpIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 720
    .end local v1           #tmpIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 17

    .prologue
    .line 585
    const/4 v13, 0x0

    .line 586
    .local v13, nCallCount:I
    const/4 v14, 0x0

    .line 587
    .local v14, nMsgCount:I
    const/4 v15, 0x0

    .line 588
    .local v15, nVvmCount:I
    const/4 v7, 0x0

    .line 589
    .local v7, bUpdatedCallCount:Z
    const/4 v8, 0x0

    .line 590
    .local v8, bUpdatedMsgCount:Z
    const/4 v9, 0x0

    .line 592
    .local v9, bUpdatedVvmCount:Z
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v13

    .line 593
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v14

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "badgecount"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 603
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 604
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 607
    .local v16, pkgName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 608
    .local v12, className:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 612
    .local v10, badgeCount:I
    const-string v1, "com.samsung.vvm"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.samsung.vvm.vvmapp.VVMApplication"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 614
    move v15, v10

    .line 620
    .end local v10           #badgeCount:I
    .end local v12           #className:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 624
    .end local v11           #c:Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-eq v13, v1, :cond_6

    .line 625
    const/4 v7, 0x1

    .line 626
    const/16 v1, 0x3e7

    if-le v13, v1, :cond_5

    .line 627
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 637
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-eq v15, v1, :cond_8

    .line 638
    const/4 v9, 0x1

    .line 639
    const/16 v1, 0x3e7

    if-le v14, v1, :cond_7

    .line 640
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    .line 646
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-eq v14, v1, :cond_a

    .line 647
    const/4 v8, 0x1

    .line 648
    const/16 v1, 0x3e7

    if-le v14, v1, :cond_9

    .line 649
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 659
    :goto_3
    if-nez v8, :cond_2

    if-nez v7, :cond_2

    if-eqz v9, :cond_3

    .line 660
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedIcons()V

    .line 668
    return-void

    .line 617
    .restart local v10       #badgeCount:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #className:Ljava/lang/String;
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 629
    .end local v10           #badgeCount:I
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #className:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    goto :goto_1

    .line 631
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 642
    :cond_7
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    goto :goto_2

    .line 644
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 651
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    goto :goto_3

    .line 653
    :cond_a
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private updateMissedIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 519
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-lez v0, :cond_4

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 523
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-lez v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->invalidate()V

    .line 552
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 571
    return-void
.end method

.method public getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    return-object v0
.end method

.method public getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 727
    const-string v0, ""

    .line 729
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040672

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    .line 732
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v1, v5, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040670

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v1, v5, :cond_2

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040671

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v1, v5, :cond_3

    .line 739
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104066e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-ne v1, v5, :cond_4

    .line 741
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104066f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 743
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x104066d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTTSMessage(Z)Ljava/lang/String;
    .locals 9
    .parameter "isMissedCall"

    .prologue
    const v5, 0x104066e

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 753
    const-string v0, ""

    .line 756
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_0

    .line 757
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v4, 0x1040676

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, swipeMsg:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .line 763
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v3, v6, :cond_1

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x1040670

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 777
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 759
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #swipeMsg:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v4, 0x1040677

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #swipeMsg:Ljava/lang/String;
    goto :goto_0

    .line 766
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_4

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_1

    .line 770
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v3, v6, :cond_3

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x1040671

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_1

    .line 773
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_4

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_1

    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_4
    move-object v1, v0

    .line 777
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 582
    return-void
.end method
