.class Lcom/android/gallery3d/app/EyePosition$PositionListener;
.super Ljava/lang/Object;
.source "EyePosition.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/EyePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/EyePosition;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/EyePosition;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/gallery3d/app/EyePosition$PositionListener;->this$0:Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/EyePosition;Lcom/android/gallery3d/app/EyePosition$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/EyePosition$PositionListener;-><init>(Lcom/android/gallery3d/app/EyePosition;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 186
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/EyePosition$PositionListener;->this$0:Lcom/android/gallery3d/app/EyePosition;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    #calls: Lcom/android/gallery3d/app/EyePosition;->onGyroscopeChanged(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/EyePosition;->access$100(Lcom/android/gallery3d/app/EyePosition;FFF)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/EyePosition$PositionListener;->this$0:Lcom/android/gallery3d/app/EyePosition;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    #calls: Lcom/android/gallery3d/app/EyePosition;->onAccelerometerChanged(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/EyePosition;->access$200(Lcom/android/gallery3d/app/EyePosition;FFF)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
