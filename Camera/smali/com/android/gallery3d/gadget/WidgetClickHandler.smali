.class public Lcom/android/gallery3d/gadget/WidgetClickHandler;
.super Landroid/app/Activity;
.source "WidgetClickHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isValidDataUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "dataUri"

    .prologue
    const/4 v2, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return v2

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 42
    .local v1, f:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 44
    .end local v1           #f:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "PhotoAppWidgetClickHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 58
    invoke-direct {p0, v3}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->isValidDataUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    if-eqz v0, :cond_3

    .line 61
    const-string v3, "treat-back-as-up"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, v2

    .line 68
    :goto_1
    if-eqz v0, :cond_0

    .line 69
    const v0, 0x1000c000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->finish()V

    .line 76
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_2
    const v2, 0x7f0a01d5

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method
