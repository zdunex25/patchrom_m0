.class public Lcom/android/OriginalSettings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mRingtone:Lcom/android/OriginalSettings/SoundSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 39
    return-void
.end method


# virtual methods
.method public directRingtone()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 73
    .local v0, result:Ljava/lang/Boolean;
    if-ne p2, v3, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->mRingtone:Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/SoundSettings;->onMusicPickerChosen(I)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    .line 78
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 79
    iget-object v1, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->mRingtone:Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/SoundSettings;->finish()V

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 49
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 52
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090d97

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_0
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 61
    return-void
.end method

.method public setObject(Lcom/android/OriginalSettings/SoundSettings;)V
    .locals 0
    .parameter "soundSettings"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/OriginalSettings/DefaultRingtonePreference;->mRingtone:Lcom/android/OriginalSettings/SoundSettings;

    .line 91
    return-void
.end method
