.class Lcom/android/gallery3d/gadget/WidgetTypeChooser$2;
.super Ljava/lang/Object;
.source "WidgetTypeChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/gadget/WidgetTypeChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/gadget/WidgetTypeChooser;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/gadget/WidgetTypeChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/gadget/WidgetTypeChooser$2;->this$0:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetTypeChooser$2;->this$0:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->setResult(I)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetTypeChooser$2;->this$0:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-virtual {v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->finish()V

    .line 56
    return-void
.end method
