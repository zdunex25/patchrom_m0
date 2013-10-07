.class Lcom/sec/android/app/camera/Camera$12;
.super Ljava/util/TimerTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5868
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5871
    const-string v3, "Camera"

    const-string v4, "Burst  updateThumbnailButton"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 5875
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5876
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5877
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 5878
    .local v2, values:Landroid/content/ContentValues;
    const-string v1, "weather_ID"

    .line 5879
    .local v1, WEATHER_ID:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5881
    const-string v0, "city_ID"

    .line 5882
    .local v0, CITY_ID:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5883
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5887
    .end local v0           #CITY_ID:Ljava/lang/String;
    .end local v1           #WEATHER_ID:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
