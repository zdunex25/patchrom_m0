.class public Lcom/android/gallery3d/ui/PopupList$Item;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/gallery3d/ui/PopupList$Item;->id:I

    .line 50
    iput-object p2, p0, Lcom/android/gallery3d/ui/PopupList$Item;->title:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/ui/PopupList$Item;->title:Ljava/lang/String;

    .line 55
    return-void
.end method
