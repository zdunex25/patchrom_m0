.class public Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field public static final BATTERY_LOW_ICON:I = 0x0

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LOCK_ICON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

.field private mDateFormatString:Ljava/lang/CharSequence;

.field private mDateView:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 77
    return-void
.end method

.method private maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x10202f5

    if-eq v0, v1, :cond_1

    .line 146
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 137
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 81
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x1040064

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormatString:Ljava/lang/CharSequence;

    .line 85
    const v4, 0x1020063

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    .line 86
    const v4, 0x10202e3

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 87
    const v4, 0x1020301

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 88
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v4, v1, v6

    .line 95
    .local v1, marqueeViews:[Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 96
    aget-object v3, v1, v0

    .line 97
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 98
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find widget at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v3           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 103
    return-void
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshDate()V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshAlarmStatus()V

    .line 109
    return-void
.end method

.method refreshAlarmStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const v2, 0x108002e

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormatString:Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method
