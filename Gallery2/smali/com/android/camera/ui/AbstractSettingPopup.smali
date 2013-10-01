.class public abstract Lcom/android/camera/ui/AbstractSettingPopup;
.super Lcom/android/camera/ui/RotateLayout;
.source "AbstractSettingPopup.java"


# instance fields
.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 41
    return-void
.end method

.method public abstract reloadPreference()V
.end method
