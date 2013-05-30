.class Landroid/hardware/scontext/SContextService$6;
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
    .line 455
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$6;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/contextaware/CAEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v1

    sget v2, Landroid/hardware/contextaware/CAEvent;->AUTO_ROTATION:I

    if-ne v1, v2, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getAutoRotationContext()Landroid/hardware/contextaware/CAAutoRotationContext;

    move-result-object v0

    .line 461
    .local v0, autoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$6;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAAutoRotationContext;->getAngle()I

    move-result v2

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->angle:I

    .line 463
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$6;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$6;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 465
    .end local v0           #autoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;
    :cond_0
    return-void
.end method
