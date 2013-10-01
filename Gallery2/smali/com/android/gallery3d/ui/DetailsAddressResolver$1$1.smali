.class Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/DetailsAddressResolver$1;

.field final synthetic val$future:Lcom/android/gallery3d/util/Future;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver$1;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;->this$1:Lcom/android/gallery3d/ui/DetailsAddressResolver$1;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;->val$future:Lcom/android/gallery3d/util/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;->this$1:Lcom/android/gallery3d/ui/DetailsAddressResolver$1;

    iget-object v1, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1$1;->val$future:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    #calls: Lcom/android/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$200(Lcom/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;)V

    .line 75
    return-void
.end method
