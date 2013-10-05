.class Lcom/android/camera/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/CropImage$2;->this$0:Lcom/android/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/CropImage$2;->this$0:Lcom/android/camera/CropImage;

    #calls: Lcom/android/camera/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/android/camera/CropImage;->access$000(Lcom/android/camera/CropImage;)V

    .line 226
    return-void
.end method
