.class public Lcom/golgorz/hoveringcontrols/Tilted;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorListener;


# instance fields
.field final a:Ljava/lang/String;

.field b:Landroid/hardware/SensorManager;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field private g:F

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x41a0

    const/high16 v1, -0x3e60

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "IBMEyes"

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->b:Landroid/hardware/SensorManager;

    iput-boolean v3, p0, Lcom/golgorz/hoveringcontrols/Tilted;->h:Z

    iput v3, p0, Lcom/golgorz/hoveringcontrols/Tilted;->i:I

    iput v2, p0, Lcom/golgorz/hoveringcontrols/Tilted;->c:F

    iput v2, p0, Lcom/golgorz/hoveringcontrols/Tilted;->d:F

    iput v1, p0, Lcom/golgorz/hoveringcontrols/Tilted;->e:F

    iput v1, p0, Lcom/golgorz/hoveringcontrols/Tilted;->f:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 3

    const-string v0, "IBMEyes"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAccuracyChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/Tilted;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->b:Landroid/hardware/SensorManager;

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 4

    const/high16 v3, 0x41a0

    const/4 v0, 0x1

    monitor-enter p0

    if-ne p1, v0, :cond_4

    :try_start_0
    iget v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->i:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DEFAULT POS DEBE CAMBIAR"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p2, v0

    add-float/2addr v0, v3

    iput v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->c:F

    const/4 v0, 0x1

    aget v0, p2, v0

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->h:Z

    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->g:F

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "default pos set:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/golgorz/hoveringcontrols/Tilted;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/golgorz/hoveringcontrols/Tilted;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const-string v0, "IBMEyes"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSensorChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    aget v0, p2, v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/Tilted;->c:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Direction is: UP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->g:F

    const/4 v1, 0x1

    aget v1, p2, v1

    sub-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->g:F

    const/4 v1, 0x1

    aget v1, p2, v1

    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "sumando count"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->i:I

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    const/4 v0, 0x1

    aget v0, p2, v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/Tilted;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Direction is: DOWN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    const/4 v0, 0x2

    :try_start_1
    aget v0, p2, v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/Tilted;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Direction is: LEFT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    aget v0, p2, v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/Tilted;->f:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Direction is: RIGHT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Tilted;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
