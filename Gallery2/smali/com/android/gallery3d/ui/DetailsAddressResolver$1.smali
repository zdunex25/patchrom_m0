.class Lcom/android/gallery3d/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$102(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 70
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    #getter for: Lcom/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$300(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver$1;Lcom/android/gallery3d/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_0
    return-void
.end method
