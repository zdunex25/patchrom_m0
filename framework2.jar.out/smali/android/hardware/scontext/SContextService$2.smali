.class Landroid/hardware/scontext/SContextService$2;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/contextaware/CAListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/contextaware/CAEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v1

    sget v2, Landroid/hardware/contextaware/CAEvent;->PEDOMETER:I

    if-ne v1, v2, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getPedometerContext()Landroid/hardware/contextaware/CAPedometerContext;

    move-result-object v0

    .line 407
    .local v0, pedometerContext:Landroid/hardware/contextaware/CAPedometerContext;
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPedometerContext;->getStepCount()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->stepCount:J

    .line 408
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPedometerContext;->getCalorie()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->calorie:D

    .line 409
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPedometerContext;->getDistance()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->distance:D

    .line 410
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPedometerContext;->getSpeed()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->speed:D

    .line 411
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAPedometerContext;->getStepStatus()I

    move-result v2

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->stepStatus:I

    .line 412
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 414
    .end local v0           #pedometerContext:Landroid/hardware/contextaware/CAPedometerContext;
    :cond_0
    return-void
.end method
