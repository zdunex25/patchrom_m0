.class Lcom/android/camera/PhotoModule$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->locationFirstRun()V
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
    .line 544
    iput-object p1, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/PhotoModule$2;->this$0:Lcom/android/camera/PhotoModule;

    const-string v1, "off"

    #calls: Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V

    .line 548
    return-void
.end method
