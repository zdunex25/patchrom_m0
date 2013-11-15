.class public Lcom/android/camera/ui/TimeIntervalPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "TimeIntervalPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TimeIntervalPopup$Listener;
    }
.end annotation


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private final mDurations:[Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

.field private mNumberSpinner:Landroid/widget/NumberPicker;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mTimeLapseSwitch:Lcom/android/camera/ui/Switch;

.field private mTimePicker:Landroid/view/View;

.field private mUnitSpinner:Landroid/widget/NumberPicker;

.field private final mUnits:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    .line 62
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/TimeIntervalPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->updateInputState()V

    return-void
.end method

.method private restoreSetting()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, index:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 111
    const-string v4, "TimeIntervalPopup"

    const-string v5, "Invalid preference value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->print()V

    .line 113
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 114
    :cond_0
    if-nez v1, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Lcom/android/camera/ui/Switch;

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 117
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Lcom/android/camera/ui/Switch;

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 120
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 121
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 122
    .local v0, durationCount:I
    add-int/lit8 v4, v1, -0x1

    div-int v3, v4, v0

    .line 123
    .local v3, unit:I
    add-int/lit8 v4, v1, -0x1

    rem-int v2, v4, v0

    .line 124
    .local v2, number:I
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 125
    iget-object v4, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Lcom/android/camera/ui/Switch;

    invoke-virtual {v1}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 154
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 159
    .end local v0           #newId:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/TimeIntervalPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 162
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/high16 v4, 0x6

    const/4 v3, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 70
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    array-length v0, v1

    .line 74
    .local v0, durationCount:I
    const v1, 0x7f1000bc

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 76
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 81
    const v1, 0x7f1000bd

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 87
    const v1, 0x7f1000ba

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    .line 88
    const v1, 0x7f1000be

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Switch;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Lcom/android/camera/ui/Switch;

    .line 89
    const v1, 0x7f1000bf

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f1000c0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 96
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Lcom/android/camera/ui/Switch;

    new-instance v2, Lcom/android/camera/ui/TimeIntervalPopup$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup$1;-><init>(Lcom/android/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/camera/ui/TimeIntervalPopup$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup$2;-><init>(Lcom/android/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mListener:Lcom/android/camera/ui/TimeIntervalPopup$Listener;

    .line 55
    return-void
.end method

.method protected setTimeSelectionEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    :cond_1
    move v2, v1

    .line 143
    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/camera/ui/TimeIntervalPopup;->restoreSetting()V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 139
    return-void
.end method
