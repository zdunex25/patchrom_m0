.class Lcom/android/camera/PhotoModule$12;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/android/camera/PhotoModule$12;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/camera/PhotoModule$12;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2079
    return-void
.end method
