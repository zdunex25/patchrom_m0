.class public Lcom/android/gallery3d/gadget/WidgetConfigure;
.super Landroid/app/Activity;
.source "WidgetConfigure.java"


# static fields
.field private static MAX_WIDGET_SIDE:I

.field private static WIDGET_SCALE_FACTOR:F


# instance fields
.field private mAppWidgetId:I

.field private mPickedItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/high16 v0, 0x3fc0

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    .line 53
    const/16 v0, 0x168

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    return-void
.end method

.method private setChoosenAlbum(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 157
    const-string v2, "album-path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, albumPath:Ljava/lang/String;
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;)Z

    .line 162
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v2
.end method

.method private setChoosenPhoto(Landroid/content/Intent;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 133
    .local v2, res:Landroid/content/res/Resources;
    const v7, 0x7f0e004a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 134
    .local v6, width:F
    const v7, 0x7f0e004b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 138
    .local v0, height:F
    sget v7, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    sget v8, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    int-to-float v8, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 141
    .local v3, scale:F
    mul-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 142
    .local v5, widgetWidth:I
    mul-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 144
    .local v4, widgetHeight:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 145
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    iget-object v9, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "outputX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scale"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "return-data"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, request:Landroid/content/Intent;
    const/4 v7, 0x3

    invoke-virtual {p0, v1, v7}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    return-void
.end method

.method private setPhotoWidget(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 120
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 121
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    .line 124
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v2
.end method

.method private setWidgetType(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f100013

    .line 169
    const-string v0, "widget-type"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 170
    const v1, 0x7f100011

    if-ne v0, v1, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/AlbumPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    :goto_0
    return-void

    .line 173
    :cond_0
    if-ne v0, v2, :cond_1

    .line 174
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 176
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;)Z

    .line 177
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v0

    .line 183
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/DialogPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 6
    .parameter "entry"

    .prologue
    .line 88
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 89
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v2, p1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 90
    .local v1, views:Landroid/widget/RemoteViews;
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 91
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 94
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 98
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 106
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 108
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setChoosenAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 110
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setChoosenPhoto(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 112
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setPhotoWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 63
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    if-ne v0, v2, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    if-nez p1, :cond_2

    .line 70
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "widget-type"

    const v2, 0x7f100012

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method
