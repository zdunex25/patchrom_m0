.class Lcom/android/camera/Camcorder$18;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder;->showSnapshotLimitationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4606
    iput-object p1, p0, Lcom/android/camera/Camcorder$18;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4608
    return-void
.end method
