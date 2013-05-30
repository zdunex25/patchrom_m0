.class Landroid/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 311
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 316
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    :cond_0
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v2, v2, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v2}, Landroid/preference/VolumePreference;->access$000(Landroid/preference/VolumePreference;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v2, v2, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mProfileMode:I
    invoke-static {v2}, Landroid/preference/VolumePreference;->access$100(Landroid/preference/VolumePreference;)I

    move-result v2

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v3, v3, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mEditMode:I
    invoke-static {v3}, Landroid/preference/VolumePreference;->access$200(Landroid/preference/VolumePreference;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 326
    .local v1, volume:I
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 327
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$400(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v2, "HPH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$600(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v4, v4, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->HPH_MUSIC:I
    invoke-static {v4}, Landroid/preference/VolumePreference;->access$700(Landroid/preference/VolumePreference;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 337
    .end local v0           #isMusicHPH:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 338
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
