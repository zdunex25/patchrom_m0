.class public Lcom/android/gallery3d/gadget/WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/gadget/WidgetService$1;,
        Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;,
        Lcom/android/gallery3d/gadget/WidgetService$EmptySource;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 46
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, id:I
    const-string v3, "widget-type"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, type:I
    const-string v3, "album-path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, albumPath:Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;-><init>(Lcom/android/gallery3d/app/GalleryApp;IILjava/lang/String;)V

    return-object v4
.end method
