.class Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;
.super Landroid/widget/SimpleAdapter;
.source "ListPrefSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ListPrefSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListPrefSettingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ListPrefSettingPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ListPrefSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;->this$0:Lcom/android/camera/ui/ListPrefSettingPopup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 59
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 60
    return-void
.end method


# virtual methods
.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 64
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method
