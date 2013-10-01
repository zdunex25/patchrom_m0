.class public Lcom/android/camera/ui/InLineSettingSwitch;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingSwitch.java"


# instance fields
.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitch:Lcom/android/camera/ui/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/android/camera/ui/InLineSettingSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingSwitch$1;-><init>(Lcom/android/camera/ui/InLineSettingSwitch;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 42
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ec

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 47
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Switch;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/Switch;->setEnabled(Z)V

    .line 81
    :cond_1
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    iget v4, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mIndex:I

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 68
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    return-void

    :cond_0
    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Lcom/android/camera/ui/Switch;

    if-ne v0, v1, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
