.class public Landroid/hardware/contextaware/aggregator/MovingAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "MovingAggregator.java"


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
    .line 30
    .local p1, collectionList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/contextaware/ContextProvider;>;"
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 64
    return-void
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 42
    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->stop()V

    return-void
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 53
    return-void
.end method

.method public bridge synthetic updateAPPowerStatus(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateAPPowerStatus(I)V

    return-void
.end method

.method public updateContext(ILandroid/hardware/contextaware/IContextBundle;)V
    .locals 0
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 75
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 76
    return-void
.end method
