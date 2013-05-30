.class public Landroid/hardware/contextaware/dataprovider/RawGpsRunner;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "RawGpsRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 106
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 51
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 40
    return-void
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 84
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 62
    return-void
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 113
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 73
    return-void
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 95
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 120
    :cond_0
    return-void
.end method
