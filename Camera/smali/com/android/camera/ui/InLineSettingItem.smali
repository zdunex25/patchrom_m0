.class public abstract Lcom/android/camera/ui/InLineSettingItem;
.super Landroid/widget/LinearLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/InLineSettingItem$Listener;
    }
.end annotation


# instance fields
.field protected mIndex:I

.field private mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/ListPreference;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 70
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 76
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 61
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 84
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    .line 88
    return-void
.end method

.method protected setTitle(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 55
    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method protected abstract updateView()V
.end method
