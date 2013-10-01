.class public final Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SamplingTimer"
.end annotation


# instance fields
.field mCurrentReportedCount:I

.field mCurrentReportedTotalTime:J

.field mInDischarge:Z

.field mTrackingReportedValues:Z

.field mUnpluggedReportedCount:I

.field mUnpluggedReportedTotalTime:J

.field mUpdateVersion:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZLandroid/os/Parcel;)V
    .locals 4
    .parameter
    .parameter "inDischarge"
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;Z",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 739
    invoke-direct {p0, v1, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 745
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 746
    return-void

    :cond_0
    move v0, v1

    .line 744
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/ArrayList;ZZ)V
    .locals 1
    .parameter
    .parameter "inDischarge"
    .parameter "trackReportedValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;)V

    .line 751
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 752
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 753
    return-void
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 3

    .prologue
    .line 817
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCount:I

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    sub-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .parameter "curBatteryRealtime"

    .prologue
    .line 812
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTotalTime:J

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    sub-long/2addr v0, v4

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUpdateVersion()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public plug(JJ)V
    .locals 1
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 799
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->plug(JJ)V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 801
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 844
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 848
    return-void

    .line 847
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z
    .locals 1
    .parameter "stats"
    .parameter "detachIfReset"

    .prologue
    .line 831
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    .line 833
    const/4 v0, 0x1

    return v0
.end method

.method public setStale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 757
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 758
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 759
    return-void
.end method

.method public setUpdateVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 762
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    .line 763
    return-void
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 790
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->unplug(JJ)V

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    .line 792
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 793
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 795
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 796
    return-void
.end method

.method public updateCurrentReportedCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    if-nez v0, :cond_0

    .line 772
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 776
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 777
    return-void
.end method

.method public updateCurrentReportedTotalTime(J)V
    .locals 4
    .parameter "totalTime"

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 782
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 786
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    .line 787
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 837
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 838
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 839
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    return-void

    .line 840
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 822
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 823
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 826
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 827
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    return-void

    .line 827
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
