.class Lcom/android/gallery3d/app/ManageCachePage$4;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ManageCachePage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/gallery3d/app/ManageCachePage$4;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$4;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #calls: Lcom/android/gallery3d/app/ManageCachePage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ManageCachePage;->access$1000(Lcom/android/gallery3d/app/ManageCachePage;I)V

    .line 300
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$4;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/ManageCachePage;->onSingleTapUp(I)V

    .line 310
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$4;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #calls: Lcom/android/gallery3d/app/ManageCachePage;->onUp()V
    invoke-static {v0}, Lcom/android/gallery3d/app/ManageCachePage;->access$1100(Lcom/android/gallery3d/app/ManageCachePage;)V

    .line 305
    return-void
.end method
