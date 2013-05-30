.class public Lcom/android/OriginalSettings/cloud/CloudAccountPreference;
.super Landroid/preference/Preference;
.source "CloudAccountPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cloud/CloudAccountPreference;->setLayoutResource(I)V

    .line 15
    return-void
.end method
