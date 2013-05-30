.class public Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
.super Ljava/lang/Object;
.source "SContextContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextPedometerContext"
.end annotation


# instance fields
.field protected calorie:D

.field protected distance:D

.field protected speed:D

.field protected stepCount:J

.field protected stepStatus:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->stepCount:J

    .line 46
    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->calorie:D

    .line 47
    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->distance:D

    .line 48
    iput-wide v2, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->speed:D

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->stepStatus:I

    .line 50
    return-void
.end method
