.class public Landroid/app/BarBeamFactory;
.super Ljava/lang/Object;
.source "BarBeamFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarBeamFactory"


# instance fields
.field private mbarbeamcmd:Landroid/app/BarBeamCommand;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/app/Hop;)V
    .locals 3
    .parameter "context"
    .parameter "HopSequencearray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    .line 35
    :try_start_1
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p2}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_1
    .catch Landroid/app/BarBeamException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :cond_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 31
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 36
    .end local v0           #e:Landroid/app/BarBeamException;
    :catch_1
    move-exception v0

    .line 37
    .restart local v0       #e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 38
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public StartBarBeamFactory([B)Z
    .locals 5
    .parameter "barcode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 83
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3, p1}, Landroid/app/BarBeamCommand;->setBarcode([B)V

    .line 84
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3}, Landroid/app/BarBeamCommand;->startBeaming()V

    .line 85
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 88
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v3, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 89
    const/4 v2, 0x1

    .line 102
    :cond_0
    return v2

    .line 93
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "BarBeamFactory"

    const-string v4, "Failed loading MobeamLED implementation: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "BarBeamException in setHopSequence :"

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #i:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public StopBarBeamFactory()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 112
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3}, Landroid/app/BarBeamCommand;->stopBeaming()V

    .line 113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 116
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v3, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const/4 v2, 0x1

    .line 129
    :cond_0
    return v2

    .line 121
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "BarBeamFactory"

    const-string v4, "BarBeamException in getCurrentStatus: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "BarBeamException in getCurrentStatus :"

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #i:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    const-string v2, "barbeam"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamCommand;

    .line 51
    .local v1, m:Landroid/app/BarBeamCommand;
    invoke-interface {v1}, Landroid/app/BarBeamCommand;->isImplementationCompatible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 52
    .end local v1           #m:Landroid/app/BarBeamCommand;
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "BarBeamFactory"

    const-string v3, "Failed loading MobeamLED implementation: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "No implementaion found."

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 3
    .parameter "HopSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p1}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 70
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
