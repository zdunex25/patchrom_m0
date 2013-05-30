.class public Landroid/hardware/contextaware/aggregator/LocationAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, collectionList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/contextaware/ContextProvider;>;"
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 73
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/LocationAggregator;->initialize()V

    .line 46
    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->start()V

    .line 47
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->stop()V

    .line 58
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/LocationAggregator;->terminate()V

    goto :goto_0
.end method

.method public bridge synthetic updateAPPowerStatus(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateAPPowerStatus(I)V

    return-void
.end method

.method public updateContext(ILandroid/hardware/contextaware/IContextBundle;)V
    .locals 3
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 83
    instance-of v0, p2, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    .end local p2
    iget-object v1, p2, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local p2
    :cond_1
    instance-of v0, p2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "PedometerRunner"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
