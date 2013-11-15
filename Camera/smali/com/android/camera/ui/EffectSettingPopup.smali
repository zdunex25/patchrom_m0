.class public Lcom/android/camera/ui/EffectSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "EffectSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EffectSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private mBackgroundGrid:Landroid/widget/GridView;

.field mBackgroundItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClearEffects:Landroid/view/View;

.field private mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

.field private mNoEffect:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;

.field private mSillyFacesGrid:Landroid/widget/GridView;

.field mSillyFacesItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    .line 64
    const v0, 0x7f0a00ea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/EffectSettingPopup$Listener;->onSettingChanged()V

    .line 213
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 70
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    .line 73
    const v0, 0x7f10001f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    .line 74
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, value:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 203
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 204
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mListener:Lcom/android/camera/ui/EffectSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/EffectSettingPopup$Listener;->onSettingChanged()V

    .line 205
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    if-ne p1, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reloadPreference()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 158
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 160
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mSillyFacesGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mBackgroundGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_0

    .line 170
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 177
    :cond_4
    const-string v2, "EffectSettingPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid preference value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 141
    if-nez p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/camera/ui/EffectSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mNoEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    .local v0, noEffect:Z
    iget-object v2, p0, Lcom/android/camera/ui/EffectSettingPopup;->mClearEffects:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .end local v0           #noEffect:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSettingPopup;->reloadPreference()V

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 151
    return-void

    .line 146
    .restart local v0       #noEffect:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
