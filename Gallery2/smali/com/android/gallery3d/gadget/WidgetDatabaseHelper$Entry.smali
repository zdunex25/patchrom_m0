.class public Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
.super Ljava/lang/Object;
.source "WidgetDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public albumPath:Ljava/lang/String;

.field public imageData:[B

.field public imageUri:Ljava/lang/String;

.field public type:I

.field public widgetId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "id"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    .line 75
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    .line 76
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    .line 78
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(ILandroid/database/Cursor;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(ILandroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 85
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(ILandroid/database/Cursor;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>()V

    return-void
.end method
