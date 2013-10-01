.class Lcom/android/gallery3d/filtershow/PanelController$ViewType;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewType"
.end annotation


# instance fields
.field private final mType:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "type"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->mView:Landroid/view/View;

    .line 294
    iput p3, p0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->mType:I

    .line 295
    return-void
.end method


# virtual methods
.method public type()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->mType:I

    return v0
.end method
