.class public Lcom/android/gallery3d/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;,
        Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;,
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;
    }
.end annotation


# static fields
.field private static sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# instance fields
.field private mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 1
    .parameter "activity"
    .parameter "rootPane"
    .parameter "source"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {v0, p1, p3}, Lcom/android/gallery3d/ui/DialogDetailsView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    .line 49
    return-void
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 91
    sparse-switch p1, :sswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 93
    :sswitch_0
    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :sswitch_1
    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_2
    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_3
    const v0, 0x7f0a01da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :sswitch_4
    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_5
    const v0, 0x7f0a01dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_6
    const v0, 0x7f0a01dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_7
    const v0, 0x7f0a01de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_8
    const v0, 0x7f0a01df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_9
    const v0, 0x7f0a01e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_a
    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_b
    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_c
    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :sswitch_d
    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_e
    const v0, 0x7f0a01e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_f
    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_10
    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_11
    const v0, 0x7f0a01e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :sswitch_12
    const v0, 0x7f0a01e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    .line 80
    :cond_0
    return-void
.end method

.method public static resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 1
    .parameter "activity"
    .parameter "latlng"
    .parameter "listener"

    .prologue
    .line 70
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    .line 75
    :goto_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->hide()V

    .line 88
    return-void
.end method

.method public layout(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    instance-of v1, v1, Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    .line 54
    .local v0, view:Lcom/android/gallery3d/ui/GLView;
    sub-int v1, p4, p2

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 56
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 58
    .end local v0           #view:Lcom/android/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method

.method public reloadDetails()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->reloadDetails()V

    .line 62
    return-void
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 66
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->show()V

    .line 84
    return-void
.end method
